class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect "/login"
        end
    end

    def destroy
        session.clear
        redirect_to '/'
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