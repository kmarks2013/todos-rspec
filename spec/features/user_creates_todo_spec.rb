require 'rails_helper'

feature "User creates a todo" do
    scenario "successfully" do
        visit root_path

        click_on "Add a new todo"

        fill_in "Title", with: "Buy Milk" #this is for filling out a form
        click_on "Submit" #this is for clicking on a link or a button
    end
end