class ApplicationController < ActionController::Base
# ApplicationController is a class where you puth the methods that are valid for all controllers,
# So you wont have to repeat yourself
    def authenticate
        if !signed_in?
            redirect_to new_session_path
        end
    end
    
    def signed_in?
        current_email.present?
    end

    def current_email
        session[:current_email]
    end

    def sign_in_as(email)
        session[:current_email] = email
    end
end
