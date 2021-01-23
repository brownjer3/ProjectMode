class UsersController < ApplicationController
    def new
        @user = User.new
        render action: :new, layout: "layouts/logged_out"
    end

    def create
        @user = User.new(user_params)
        if @user.save
            handle_photo(@user)
            log_user_in
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @projects = @user.projects
    end

    def edit
        @user = current_user
    end

    def update
        if current_user.update(user_params)
            handle_photo(current_user)
            redirect_to user_path(current_user)
        else
            render :edit
        end
    end


    private 
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :cohort_id)
    end
    
    def handle_photo(user)
        user.photo.purge if user.photo.attached?
        user.photo.attach(params[:user][:photo])
    end

end
