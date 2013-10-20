class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      @user.last_name = session["devise.facebook_data"][:info][:last_name]
      @user.first_name = session["devise.facebook_data"][:info][:first_name]
      @user.url = session["devise.facebook_data"][:info][:urls][:Facebook]
      @user.save
      redirect_to new_user_registration_url
    end
  end
end
