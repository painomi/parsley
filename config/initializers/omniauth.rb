Rails.application.config.middleware.use OmniAuth::Builder do
  case Rails.env
  when 'production'
    client_id=  '342705688684-enb5ffhbelr3ibbdrlju4a9qkekm8df7.apps.googleusercontent.com'
    client_key= 'uIk9jJbi9UHE30AHm69pF5av'
  when 'development'
    client_id=  '342705688684-enb5ffhbelr3ibbdrlju4a9qkekm8df7.apps.googleusercontent.com'
    client_key= 'uIk9jJbi9UHE30AHm69pF5av'
  end

  provider :google_oauth2, client_id, client_key,
  {
    name: 'google',
    scope: 'userinfo.email,userinfo.profile'
  }
end
