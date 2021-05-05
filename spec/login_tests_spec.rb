require 'rails_helper'

RSpec.describe 'Sign in', type: :system do
  describe 'sign up page' do
    it 'allows user to login' do
      visit login_path
      expect(page).to have_content('Log In')
      fill_in 'Email', with: 'user@test.com'
      fill_in 'Password', with: 'test'
      click_button 'Log In'
      expect(page).to have_content('Welcome to RecruitTracker!')
    end
  end
end