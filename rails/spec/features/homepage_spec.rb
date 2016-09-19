require 'rails_helper'

RSpec.describe 'Landing Page', :type => :feature do  
  scenario 'asks for cookies confirmation' do
      visit('/')
      expect(page).to have_content("you agree to our use of cookies")
  end
  #Use capybara to auto complete forms and navigate
end
