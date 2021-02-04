class TodosController < ApplicationController
    before_action :authenticate
    def index
        # here we enable todos only for the person with authenticated email
        @todos = Todo.where(email: current_email)
    end

    def new
        @todo = Todo.new     # create an instance of todo
    end

    def create        # create a new todo with its params and redirect
        # Merge email to params
        Todo.create(todo_params.merge(email: current_email))
        redirect_to todos_path
    end


    private

    def todo_params
        params.require(:todo).permit(:title)
    end
end