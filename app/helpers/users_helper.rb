module UsersHelper

    def welcome_message_google(user)
      content_tag :h3 do 
        "Welcome #{user.first_name}! Just need a few more details"
      end
    end

    def avatar(user)
        avatar = nil
        if user.photo.attached?
          avatar = url_for(user.photo)
        elsif !user.image.nil?
          avatar = user.image
        else
          avatar = 'technologist_avatar.png'
        end
        avatar
    end

    def display_avatar(user)
        image_tag(avatar(user), class: %w(rounded-circle border border-2 border-secondary), height: '40', width: '40')
    end

    def display_name(user)
        "#{user.first_name} #{user.last_name}"
    end

    def link_to_likes(user)
      if user.likes.size > 0
        link_to user_likes_path(@user), class: "text-white" do
          "Projects that #{@user.first_name} likes"
        end
      end

    end
    
end
