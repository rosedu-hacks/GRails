class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      current_user.last_name = session["devise.facebook_data"][:extra][:raw_info][:last_name]
      current_user.first_name = session["devise.facebook_data"][:extra][:raw_info][:first_name]
      current_user.url = session["devise.facebook_data"][:extra][:raw_info][:link]
      current_user.save
      redirect_to root_path
    end
  end
end
