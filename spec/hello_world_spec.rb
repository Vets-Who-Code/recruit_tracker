require 'rails_helper'

RSpec.describe 'Login Page', type: :system do
  describe 'login page' do
    it 'shows the right content' do
      visit login_path
      expect(page).to have_content('Log In')
    end
  end
end