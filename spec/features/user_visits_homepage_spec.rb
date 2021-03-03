# THis file will test when a user visits the home page/

require 'rails_helper'

# capybara syntax
feature 'User visits homepage' do
    scenario 'successfully' do
        visit root_path

        expect(page).to have_css 'h1', text: 'Todos'
    end
end