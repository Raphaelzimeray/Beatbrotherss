class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:show, :edit, :update, :destroy]
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
    # users = User.all
    # users.each do |user|
    #   @user
    # end
    # récupérer tous les users filtrés en fonction des instruments
    users_filtered = []
    # current_user.music_styles.each do |current_style|
    #   filter = []
    #   filter = User.where(music_styles: {name:current_style.name} )
    #   users_filtered << filter
    # end

    current_user.music_styles.each do |current_style|
      filter = []
      filter = User.where(music_styles: current_style )
      users_filtered << filter
    end
    # User.all(music_styles[0].name = 'pop')
    # Client.all(:music_styles => 'LEFT OUTER JOIN music_styles ON music_styles[0].name = "pop"')
    # User.includes(:user_user_music_styles).where("music_styles[0].name = 'pop'").references(:music_styles)

    # current_user.music_styles.each do |current_style|
    #   filter = []
    #   filter = User.where do
    #     music_styles[0] = current_style
    #   end
    #   users_filtered << filter
    # end

    users_filtered.each do
    # afficher le premier user de la liste
    # renvoyer l'index de cet user
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

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :avatar_url, :birth_date, :address, :latitude, :longitude, :mail_address, :password, :description, :music_style, :goal, :experience_in_years, :number_of_concerts, :disponibility)
  end
end
