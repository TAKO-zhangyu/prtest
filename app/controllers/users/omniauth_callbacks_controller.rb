class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # # callback for facebook
  # def facebook
  #   callback_for(:facebook)
  # end

  # # callback for twitter
  # def twitter
  #   callback_for(:twitter)
  # end

  # callback for google
  def google_oauth2
    callback_for(:google)
  end

  # common callback method
  def callback_for(provider)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
      @user.save
      sign_in @user
      redirect_to new_name_path
    end
  end

  def failure
    redirect_to root_path
  end

end