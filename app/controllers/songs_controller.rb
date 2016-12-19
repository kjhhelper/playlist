class SongsController < ApplicationController
  def new
    @songs=Song.all
    render 'new'
  end

  def create
    User.find(current_user).songs.create(song_params)
    redirect_to '/songs/new'
  end

  def show
    @clicked_song = Song.find(params[:id])
    # @c_users = User.all.exclude?(user_id:current_user.id)
    @users=User.all
    @number=Add.where(song_id:params[:id])
    render 'show'
  end

private
  def song_params
    params.require(:song).permit(:title,:artist)
  end

end
