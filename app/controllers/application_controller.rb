class ApplicationController < ActionController::Base
    before_action :current_user 
    #we do this to make sure that before any action, we are logged in. It will call this method before going to any of the pages

    def welcome
    end

    def current_user
        if session[:current_user_id]
            @current_user = User.find(session[:current_user_id])
        end
    end

end
