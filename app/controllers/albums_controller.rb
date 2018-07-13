class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
    end
  end

  def album_params
    params.require(:album).permit(:title, :year, :band_id, :type)
  end


end
