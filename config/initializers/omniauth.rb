Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :developer unless Rails.env.production?
    provider :canvas, ENV['CANVAS_KEY'], ENV['CANVAS_SECRET'], :setup => lambda{|env|
        env['omniauth.strategy'].options[:client_options].site = "https://learning.flatironschool.com/"
    }
  end 