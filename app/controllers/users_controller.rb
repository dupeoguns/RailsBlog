class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) 
        if @user.save
            flash[:success] = "Welcome to the Travel blog #{@user.username}"
            redirect_to posts_path
        else
            render 'new'
        end
    end

    def destroy
        @user.destroy
        redirect_to posts_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password_digest)
    end
end
