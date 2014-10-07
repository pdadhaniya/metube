class VideosController < ApplicationController

  #list all videos - GET /videos
  def index
    @videos = Video.all
  end

  #show a single video - GET /videos/:id
  def show
    @video = Video.find(params[:id])
  end

  #new video creation form - Get /videos/new
  def new
    @video = Video.new
  end

  #create a new video - POST /videos
  def create
  end

  #edit video form - GET /videos/:id/edit
  def edit
  end

  #update an existing video - PUT /videos/:id
  def update
  end

  #destroy an existing video - DELETE /videos/:id
  def destroy
  end


end
