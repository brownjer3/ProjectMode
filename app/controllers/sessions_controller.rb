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

    def step_2
        
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    def omniauth
        @user = User.create_google_user(auth)
        if @user.valid?
            log_user_in
            if @user.cohort_id.nil?
                render "step_2"
            else
                redirect_to root_path
            end
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to root_path
        end
    end


  private

  def auth
    request.env['omniauth.auth']
  end

  def step_2
    if @user.cohort_id.nil?
        redirect_to "step_2"
    end
  end

end