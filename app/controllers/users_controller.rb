class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :toggle_favorite

  def toggle_favorite
    @user = User.find(params[:id])
    current_user.favorite(@user)
    # current_user.favorited?(@user) ? current_user.unfavorite(@user) : current_user.favorite(@user)
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
    # @users = User.all
    # search = current_user.music_styles[0].name
    # User.all.where(name: search)
    users_filtered = []
    current_user.music_styles.each do |current_style|
      style = current_style.name
      @filter = User.includes(:music_styles).where(music_styles: { name: style }).to_ary()
      users_filtered << @filter
    end
    usersss = users_filtered[0] + users_filtered[1] + users_filtered[2]
    @users = usersss.uniq
    # raise
  end


  def index_favorited
    @favorited_users = current_user.all_favorites
  end

  def show

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
    params.require(:user).permit(:name, :surname, :avatar_url, :birth_date, :address, :latitude, :longitude, :mail_address, :password, :description, :music_style, :goal, :experience_in_years, :number_of_concerts, :disponibility, :id)
  end
end
