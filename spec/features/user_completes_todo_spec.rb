require 'rails_helper'

feature "User completes a todo" do
    scenario "successfully" do
        sign_in

        click_on "Add a new todo"
        fill_in "Title", with: "Buy Milk" #this is for filling out a form
        click_on "Submit" #this is for clicking on a link or a button

        click_on "Complete Todo"

        expect(page).to have_css '.todos li.completed', text:'Buy Milk'
    end
end