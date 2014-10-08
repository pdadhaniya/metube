class PlaylistsController < ApplicationController

  #list all playlists - GET /playlists
  def index
    @playlists = Playlist.all
  end

  #show a single playlist - GET /playlists/:id
  def show
    @playlist = Playlist.find(params[:id])
  end

  #new playlist creation form - GET /playlists/new
  def new
    @playlist = current_user.playlists.new
  end

  #create a new playlist - POST /playlists
  def create
    @playlist = current_user.playlists.new(playlist_params)

    if @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  #edit playlist form - GET /playlists/:id/edit
  def edit
  end

  #update an existing playlist - PUT /playlists/:id
  def update
  end

  #destroy an existing playlist - DELETE /playlists/:id
  def destroy
  end

  private
  def playlist_params
    params.require(:playlist).permit(:title, :author_id)
  end

end
