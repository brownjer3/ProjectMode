class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(id: params[:id])
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    def omniauth
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