class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :fav_params, only: [:create_favorited, :destroy_favorited]
  skip_before_action :verify_authenticity_token


  def toggle_favorite
    @user = User.find(params[:id])
    current_user.favorite(@user)
  end

  def new_visitor
    @user = User.new
    @user.mail_address = Time.now.iso8601 + "#{rand(999999)}@mail.fr"
    @user.password = "password"
    @user.save!
  end

  def index
    @body_class = 'index-background'

    if current_user
      @users = User.joins(:music_styles).where(music_styles: current_user.music_styles).uniq.reject { |user| user == current_user }
    else
      @users = User.all
    end
  end

  def show
    @body_class = 'show-background'
    @chatroom = Chatroom.new
    @user_chatroom = UserChatroom.new
  end

  def edit
    @body_class = 'edit-background'
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  def create_favorited
    user = User.find(current_user.id)
    user_fav = User.find(fav_params[:user_favoritable_id])
    user.favorite(user_fav)
    user.save!
  end

  def index_favorited
    @body_class = 'favorited-background'
    @favorited_users = current_user.all_favorites
  end

  def user_unfavorited
    user = User.find(params[:user_id])
    current_user.unfavorite(user)
    redirect_to user_favorited_users_path(current_user)
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :photos, :birth_date, :address, :latitude, :longitude, :mail_address, :password, :description, :music_style, :goal, :experience_in_years, :number_of_concerts, :disponibility, :id)
  end

  def fav_params
    params.permit!
  end
end
