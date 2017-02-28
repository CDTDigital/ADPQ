require 'csv'


task :import_data => :environment do
  Dir[Rails.root + 'doc/*.csv'].each do |filename|
    begin
      data = CSV.read(filename)
    rescue CSV::MalformedCSVError
      puts "filename: #{filename}"
      raise
    end

    headings = data.first
    properties = headings.map do |heading|
      next if heading.downcase =~ /sku|category|description/
      p = Spree::Property.find_or_create_by(presentation: heading)
      p.name = heading unless p.name.present?
      p.save!
      p
    end

    description_index = nil
    headings.each_with_index do |value, index|
      description_index = index if value.downcase =~ /description/
    end

    category_index = nil
    headings.each_with_index do |value, index|
      category_index = index if value.downcase =~ /category/
    end

    sku_index = nil
    headings.each_with_index do |value, index|
      sku_index = index if value.downcase =~ /sku/
    end

    data = data[1..-1]

    products = []
    data.each_with_index do |row, index|
      begin 
        product = Spree::Product.create(name: row[description_index], description: row[description_index], price: 0, available_on: Date.today, shipping_category: Spree::ShippingCategory.first, sku: row[sku_index].to_s)
        product.taxons << Spree::Taxon.find_or_create_by(name: row[category_index], taxonomy: Spree::Taxonomy.find_or_create_by(name: 'Main'))
        products << product

        row.each_with_index do |value, index|
          Spree::ProductProperty.create(product: product, property: properties[index], value: value) if properties[index]
        end
      rescue ActiveRecord::RecordInvalid
        puts "Failed on row #{index} in file #{filename}"
        raise
      end
    end
    puts "Imported #{products.length} products successfully from #{filename}"

  end
end