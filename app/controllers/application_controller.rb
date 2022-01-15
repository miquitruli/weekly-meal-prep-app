class ApplicationController < ActionController::Base
    before_action :current_user
    helper_method :current_user, :logged_in?
    #we do this to make sure that before any action, we are logged in. It will call this method before going to any of the pages

    def welcome
    end

    def current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end
    end

    def logged_in?
        current_user
    end
end
