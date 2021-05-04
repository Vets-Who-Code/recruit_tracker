#this spec for to add tests as features are being developed
#add the skelaton for your test here as a reminder to work on it later
#once it is passing, move it out of this spec to the appropriate spec

require 'rails_helper'

RSpec.describe 'Ready for reivew button', type: :system do
  describe 'click the ready for review button' do
    it 'should change the users profile status from applied to submitted' do
      visit login_path
      expect(page).to have_content('Log In')
    end
  end
end