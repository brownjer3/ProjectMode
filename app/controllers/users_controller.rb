class UsersController < ApplicationController
    def new
        @user = User.new
        render action: :new, layout: "layouts/logged_out"
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @projects = @user.projects
    end


    private 
    def user_params
        params.require(:user).permit(:first_name, :email, :password)
    end
end
