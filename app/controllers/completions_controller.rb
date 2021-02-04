class CompletionsController < ApplicationController
    def create
        current_user.todos.find(params[:todo_id]).touch :completed_at    # todo_id is given by rails
        redirect_to todos_path                                      # touch = looks at timestamp
    end
end