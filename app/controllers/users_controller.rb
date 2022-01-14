class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to '/'
        end
    end

    def show
        if User.find_by(id:params[:id]) && session[:user_id]
            @user = User.find_by(id:params[:id])
            render :show
        else
            redirect_to '/'
        end
    end

    def destroy
        session.delete :username
        redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end