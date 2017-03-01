require 'rails_helper'

describe 'compare list process', :type => :feature do
  before :each do
    Spree::User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')

    Spree::ShippingCategory.create(name: 'Default')
    product = Spree::Product.create(name: 'Test Product', shipping_category: Spree::ShippingCategory.first, available_on: Date.today, price: 20.00, sku: 'test-123')

    product.taxons << Spree::Taxon.create(name: 'test', taxonomy: Spree::Taxonomy.create(name: 'Main'))

    product.save!
  end

  it 'signs me in' do
    visit '/login'
    within('#existing-customer') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Login'

    expect(page).to have_content 'Logged in successfully'
  end

  it 'takes me to compare page' do
    visit '/login'
    within('#existing-customer') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Login'

    visit '/compare'
    expect(page).to have_content 'Compare Products'
  end
end