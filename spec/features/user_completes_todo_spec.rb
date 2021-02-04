require 'rails_helper'

feature "User completes todo" do
    scenario "Successfully" do
        sign_in

        click_on "Add new"
        fill_in "Title", with: "Buy groceries"
        click_on "Submit"

        click_on "Done"

        expect(page).to have_css '.todos li.completed', text:"Buy groceries"
    end
end