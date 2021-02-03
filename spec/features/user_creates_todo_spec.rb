require 'rails_helper'

feature "User creates todo" do
    scenario "Successfully" do
        visit root_path
        sign_in

        click_on "Add new"
        fill_in "Title", with: "Buy groceries"
        click_on "Submit"

        expect(page).to have_css '.todos li', text:'Buy groceries'
    end
end