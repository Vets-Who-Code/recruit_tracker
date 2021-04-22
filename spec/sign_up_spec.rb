require 'rails_helper'

RSpec.describe 'Sign up and Log out', type: :system do
  describe 'sign up page' do
    it 'shows the right content' do
      visit signup_path
      expect(page).to have_content('Sign Up')
      fill_in 'First name', with: 'John'
      fill_in 'Last name', with: 'Smith'
      fill_in 'Email', with: 'jsmith@email.com'
      fill_in 'Password', with: 'test'
      fill_in 'Password confirmation', with: 'test'
      click_button 'Sign Up'
      expect(page).to have_content('Thank you for signing up!')
    end
  end
end