require 'rails_helper'

feature "User creates todo" do
    scenario "Successfully" do
        sign_in             # To see your todo, first sign in
 
        create_todo "Buy groceries"

        expect(page).to display_todo 'Buy groceries'
    end
end