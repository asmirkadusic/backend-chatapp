class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session    
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end
end
