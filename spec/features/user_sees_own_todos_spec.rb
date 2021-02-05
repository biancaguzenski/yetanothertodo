require 'rails_helper'

feature "user sees owns todos" do
    scenario "doesn't see others todos" do
        Todo.create(title: "Buy milk", email: "email@mailprovider.com")
        
        sign_in_as "person@emailemail.com" # If signed in as other person, cant show todos from someone else
        
        expect(page).not_to display_todo "Buy milk"
    end
end