class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def error
        render '/layouts/error'
    end

    def current_user
      @current_user ||= User.find_by_id(session[:user])
    end

     def logged_in?
       current_user != nil
     end

end
