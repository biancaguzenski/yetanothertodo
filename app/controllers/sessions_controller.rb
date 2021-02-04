class SessionsController < ApplicationController
    # All controllers inherits from applcontroller
    def new
    end

    def create # to create a session
        sign_in_as params[:session][:email]
        redirect_to root_path
    end
end