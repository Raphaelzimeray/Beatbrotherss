class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :toggle_favorite

  def toggle_favorite
    @user = User.find(params[:id])
    current_user.favorite(@user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.mail_address = Time.now.iso8601 + "#{rand(999999)}@mail.fr"
    @user.password = "password"
    @user.save!
  end

  def index
    if current_user
      @users = User.joins(:music_styles).where(music_styles: current_user.music_styles).uniq.reject { |user| user == current_user }
    else
      @users = User.all
    end
  end


  def index_favorited
    @favorited_users = current_user.all_favorites
  end

  def show
    @chatroom = Chatroom.new
    @user_chatroom = UserChatroom.new
  end

  def edit

  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  def parameters
    @user_song = UserSong.new
    @parameters = User.parameters
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :photos, :birth_date, :address, :latitude, :longitude, :mail_address, :password, :description, :music_style, :goal, :experience_in_years, :number_of_concerts, :disponibility, :id)
  end
end
