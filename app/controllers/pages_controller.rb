class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @body_class = 'homepage-background'
    @user = User.new
  end
  
end
