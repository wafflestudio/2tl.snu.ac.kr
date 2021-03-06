class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def mysnu # reference: https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_mysnu_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Mysnu") if is_navigational_format?
    else
      session["devise.mysnu_data"] = request.env["omniauth.auth"]
      redirect_to new_user_session_path
    end
  end
end
