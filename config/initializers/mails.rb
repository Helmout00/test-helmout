EastIceFieldGame::Application.configure do

    config.action_mailer.smtp_settings = {
      address: 'smtp',
      port: 587,
      domain: 'localhost',
      authentication: 'plain',
      user_name: 'username',
      password: 'haha',
      enable_start_ssl: true 
    }
  end
