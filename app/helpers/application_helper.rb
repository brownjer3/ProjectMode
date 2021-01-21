module ApplicationHelper

    def title(text)
      content_for :title, text
    end 

    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end
  
    def logged_in?
      current_user != nil
    end

    def display_avatar(user)
      if user.image.nil?
        user.update(image: "https://m2bob-forum.net/wcf/images/avatars/3e/2720-3e546be0b0701e0cb670fa2f4fcb053d4f7e1ba5.jpg")
      end
      image_tag(user.image, class: %w(rounded-circle border border-2 border-secondary), height: '40', width: '40')
    end

end
