class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.includes(:songs).find(params[:id])
  end
end
