class RegistrationsController < Devise::RegistrationsController
  protected

  def new_user_registration_url(resource)
    @user = User.find(resource.id)
    @user.last_name = session["devise.facebook_data"][:extra][:last_name]
    @user.first_name = session["devise.facebook_data"][:extra][:first_name]
    @user.url = session["devise.facebook_data"][:extra][:link]
    if @user.save
      redirect_to root_path
    end
  end

  def after_sign_up_path_for(resource)
    user_type_path
  end
end
