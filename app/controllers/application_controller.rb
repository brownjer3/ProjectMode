class ApplicationController < ActionController::Base

    def error
        render '/layouts/error'
    end

    private

    def log_user_in
      session[:user_id] = @user.id
    end

    def homepage_login_check!
      if !logged_in?
        redirect_to home_path
      end
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
      end
    
      def logged_in?
        current_user != nil
      end

end
