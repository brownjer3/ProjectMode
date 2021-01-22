module ApplicationHelper

    def title(text)
      content_for :title, text
    end 

    def display_avatar(user)
      avatar = nil
      if user.photo.attached?
        avatar = url_for(user.photo)
      elsif !user.image.nil?
        avatar = user.image
      else
        avatar = 'technologist_avatar.png'
      end
      image_tag(avatar, class: %w(rounded-circle border border-2 border-secondary), height: '40', width: '40')
    end

    #need to figure out where these should live
    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end
  
    def logged_in?
      current_user != nil
    end

end
