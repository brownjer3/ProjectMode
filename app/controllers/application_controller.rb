class ApplicationController < ActionController::Base

    def error
        render '/layouts/error'
    end

    private

    def log_user_in
      session[:user_id] = @user.id
    end

    def find_project #could make this a before action for most controller actions
        @project = Project.find_by(id: params[:id])
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
      end
    
      def logged_in?
        current_user != nil
      end

end
