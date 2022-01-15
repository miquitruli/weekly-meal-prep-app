class UsersController < ApplicationController
    def new  
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to dashboards_path
        else
            render :new
        end
    end

    def show
        if User.find_by(id: params[:id]) && session[:user_id]
            @user = User.find_by(id: params[:id])
            render :show
        else
            redirect_to dashboards_path
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)

        redirect_to dashboards_path
    end

    private 

    def user_params
        params.require(:user).permit(:email, :password, :name, :profile_image)
    end
end