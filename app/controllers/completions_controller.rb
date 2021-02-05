class CompletionsController < ApplicationController
    def create
        todo.complete!    # hide complete at timestamp # todo_id is given by rails
        redirect_to todos_path      # touch = looks at timestamp
    end

    private

    def todo
        current_user.todos.find(params[:todo_id])
    end
end