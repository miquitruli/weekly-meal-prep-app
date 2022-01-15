class SessionsController < ApplicationController
    def create
        @user = User.find_by(:username => params[:username])
        if @user
            session[:current_user_id] = @user.id
            redirect_to "/"
        else
            redirect_to "/login", :notice =>  "NOT WORKKINGGGG"
        end
    end

    def destroy
        session.delete :current_user_id
        redirect_to "/"
    end
end