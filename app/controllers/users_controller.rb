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
            redirect_to new_project_path
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
        if @user = current_user.update(user_params)
            handle_photo(current_user)
            if current_user.projects.blank?
                redirect_to new_project_path
            end
        else
            render :edit
        end
    end

    def destroy
        current_user.delete
        redirect_to root_path
    end


    private 
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :cohort_id)
    end
    
    def handle_photo(user)
        if !params[:user][:photo].nil?
            user.photo.purge if user.photo.attached?
            user.photo.attach(params[:user][:photo])
        end
    end

end
