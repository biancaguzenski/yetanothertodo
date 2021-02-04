class ApplicationController < ActionController::Base
# ApplicationController is a class where you puth the methods that are valid for all controllers,
# So you wont have to repeat yourself
    def authenticate
        if !signed_in?
            redirect_to new_session_path
        end
    end
    
    def signed_in?
        current_user.signed_in?
    end 

    def sign_in_as(email)
        session[:current_email] = email
    end

    def current_user # needs to return an object with the method todos and that you can interac with
        User.new(session[:current_email]) # instance of user knows email
    end
end
