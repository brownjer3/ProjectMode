Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
    # provider :canvas, ENV['CANVAS_KEY'], ENV['CANVAS_SECRET'], :setup => lambda{|env|
    #     env['omniauth.strategy'].options[:client_options].site = "https://learning.flatironschool.com/"
    # }
  end 