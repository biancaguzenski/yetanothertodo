require 'rails_helper'

feature "User marks todo incomplete" do
    scenario "Successfully" do
        sign_in
        
        create_todo "Buy groceries"    # Extracted todo's creation to a method defined in todo helper
        click_on "Done"
        click_on "Not done"

        expect(page).not_to display_completed_todo "Buy groceries"
        expect(page).to display_todo "Buy groceries"
    end
end