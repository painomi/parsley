class SessionsController < ActionController::Base
  def create
    auth= request.env['omniauth.auth']
    user= User.find_by(provider: auth['provider'], uid: auth['uid']) || User.create_with_omniauth(auth)

    if user.active
      session[:user_id]= user.id
      redirect_to songs_path
    else
      @user= user
      render template: 'login/index.html'
    end

  rescue ActiveRecord::RecordInvalid => e
    @user= e.record
    redirect_to root_url
  end

  def destroy
    session[:user_id]= nil
    redirect_to root_url
  end
end
