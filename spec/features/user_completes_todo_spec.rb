require 'rails_helper'

feature "User completes todo" do
    scenario "Successfully" do
        sign_in
        
        create_todo "Buy groceries"    # Extracted todo's creation to a method defined in todo helper
        click_on "Done"

        expect(page).to display_completed_todo "Buy groceries"
    end
end