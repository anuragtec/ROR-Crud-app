class ApplicationController < ActionController::Base

    #now this method is available to all our views also
    helper_method :current_user, :logged_in?

    #this is also a helper method 
    # Access CurrentUser INfo..
    def current_user
        @current_user ||=    User.find(session[:user_id]) if session[:user_id]
    end

    #this is also a helper method
    def logged_in?
        #converting current user into Boolean
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:alert] = "You Must Be Logged In First to perform this      
                Actions" 
            redirect_to login_path
        end
    end


end


# Here whatever methods we Define are4 availabel to all controllers
