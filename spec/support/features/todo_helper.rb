# This module was created to keep dry principle happening: create_todo logic is repeated in all tests

module Features
    def create_todo(todo_title)
        click_on "Add new"
        fill_in "Title", with: todo_title
        click_on "Submit"
    end

    def display_todo(text)
        have_css '.todos li', text: text
    end

    def display_completed_todo(text)
        have_css '.todos li.completed', text: text
    end
end