class TodosController < ApplicationController
    before_action :authenticate
    def index
        @todos = Todo.all    # to allow show all todos in list
    end

    def new
        @todo = Todo.new     # create an instance of todo
    end

    def create               # create a new todo with its params and redirect
        Todo.create(todo_params)
        redirect_to todos_path
    end


    private

    def todo_params
        params.require(:todo).permit(:title)
    end
end