class UserSongsController < ApplicationController

  def index
    @body_class = 'song-background'
    user = current_user
    @user_songs = user.user_songs
    if user.user_songs[1]
      @title = 'MY SONGS'
    else
      @title = 'MY SONG'
    end
  end

  def show
    # @user_song = UserSong.find(params[:id])
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
    params.require(:user_song).permit(:title, :url, :category, :user_song, :user_id)
  end

end
