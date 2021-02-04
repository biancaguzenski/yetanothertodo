require 'rails_helper'

feature "User creates todo" do
    scenario "Successfully" do
        sign_in             # To see your todo, first sign in
 
        click_on "Add new"
        fill_in "Title", with: "Buy groceries"
        click_on "Submit"

        expect(page).to have_css '.todos li', text:'Buy groceries'
    end
end