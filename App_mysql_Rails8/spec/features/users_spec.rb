require 'rails_helper'
feature 'User management', type: :feature do
  scenario 'User creates a new user successfully' do
    visit new_user_path
    fill_in 'Name', with: 'Pedro'
    fill_in 'Password', with: 'abcd1234'
    fill_in 'Email', with: 'pedro@example.com'
    click_button 'Create User'
    expect(page).to have_text('User was successfully created')
  end
end
