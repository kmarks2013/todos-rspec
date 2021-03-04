require 'rails_helper'

feature "User completes a todo" do
    scenario "successfully" do
        sign_in

        create_todo("Buy Milk")

        click_on "Complete Todo"

        expect(page).to display_completed_todo "Buy Milk"
    end
end