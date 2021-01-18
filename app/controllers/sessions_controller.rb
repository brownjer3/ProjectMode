class SessionsController < ApplicationController

    def omniauth
        session[:auth_hash] = request.env["omniauth.auth"]
        redirect_to root
    end
end