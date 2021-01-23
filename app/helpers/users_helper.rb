module UsersHelper

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

    def display_name(user)
        "#{user.first_name} #{user.last_name}"
    end
    
end
