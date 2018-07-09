class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    if Song.create(song_params)
      redirect_to "/songs"
    else
      redirect_to "/songs/new"
    end
  end

  private
    def song_params
      params.require(:song).permit(:title, :length, :play_count, :artist_id)
    end

end
