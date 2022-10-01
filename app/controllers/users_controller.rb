class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :fav_params
  skip_before_action :verify_authenticity_token


  def toggle_favorite
    @body_class = 'homepage-background'
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
    @body_class = 'index-background'
    if current_user
      @users = User.joins(:music_styles).where(music_styles: current_user.music_styles).uniq.reject { |user| user == current_user }
    else
      @users = User.all
    end
  end

  def create_favorited
    user = User.find(current_user.id)
    user_fav = User.find(fav_params["user_favoritable_id"])
    p 'toto'
    p user
    p fav_params
    # p params
    # User.find(params[])
    # respond_to do |format|
    #     # format.html { redirect_to restaurant_path(@restaurant) }
    #     userFavoritableId = format.json # Follow the classic Rails flow and look for a create.json view
    # end
    # Favorite.create!(favoritor_type: "User", favoritor_id: current_user.id, favoritable_type: "User", favoritable_id: userFavoritableId)
  end

  def index_favorited
    @body_class = 'favorited-background'
    @favorited_users = current_user.all_favorites
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


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :photos, :birth_date, :address, :latitude, :longitude, :mail_address, :password, :description, :music_style, :goal, :experience_in_years, :number_of_concerts, :disponibility, :id)
  end

  def fav_params
    params.require(:user).permit(:data, :user_favoritable_id)
  end
end
