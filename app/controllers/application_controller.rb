class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.music_styles != nil
      user_onboarding_path(current_user) # your path
    else
      users_path() # your path
    end
  end
end
