class SessionsController < ApplicationController
    def create
        @user = User.find_by(:email => params[:email])
        if @user
            session[:user_id] = @user.id
            redirect_to "/"
        else
            redirect_to "/login", :notice =>  "NOT WORKKINGGGG"
        end
    end

    def destroy
        session.delete :user_id
        redirect_to "/"
    end

    def google_oauth
        info = request.env["omniauth.auth"].info
        user = User.where(email: info.email).first_or_initialize do |user|
            user.profile_image = info.image
            user.email = info.email
            user.name = info.name
            user.password = SecureRandom.hex
        end
        user.save
        session[:user_id] = user.id
        redirect_to dashboards_path
    end
end