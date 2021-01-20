class ApplicationController < ActionController::Base

    def error
        render '/layouts/error'
    end

end
