class SessionsController < ApplicationController
    def new
    end

    def create
        session[:current_email] = params[:session][:email]
        redirect_to root_path
        #@session = Session.new
    end
end