class SessionsController < ApplicationController
    layout "layouts/logged_out"

    def home
    end

    def new
        @user = User.new
    end

    def create
        if @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
            log_user_in
            redirect_to root_path
        else
            flash[:message] = "Login failed!"
            redirect_to login_path
        end
    end

    def signup_step_2
        
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    def omniauth
        user = User.create_google_user(auth)
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to '/'
        end
    end

    def canvas_omniauth
        user = User.create_canvas_user(auth)
        if user.valid?
            session[:user_id] = user.id
            redirect_to '/'
        else
            redirect_to '/'
        end
    end


  private

  def auth
    request.env['omniauth.auth']
  end

end