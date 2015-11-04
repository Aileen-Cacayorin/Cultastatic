class VideosController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @video = Video.new
  end


  def create
    @movie = Movie.find(params[:movie_id])
    @video = Video.create(video_params)
    @video.movie = @movie
    @video.save
    binding.pry
    redirect_to movie_path(@movie)
  end
private
  def video_params
    params.require(:video).permit(:link)
  end
end
