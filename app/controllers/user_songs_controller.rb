class UserSongsController < ApplicationController

  def index
    @user_songs = UserSong.all
  end

  def show
    @user_song = UserSong.find(params[:id])
  end

  def new
    @user = current_user
    @user_song = UserSong.new
  end

  def create
    @user_song = UserSong.new(user_song_params)
    @user_song.user_id = current_user.id
    if @user_song.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @user_song = UserSong.find(params[:id])
  end


  def update
    @user_song.update(user_song_params)
  end


  private

  def user_song_params
    params.require(:user_song).permit(:title, :url, :category)
  end

end
