require 'rails_helper'

describe 'the signin process', :type => :feature do
  before :each do
    Spree::User.create(email: 'user@example.com', password: 'password')
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
end