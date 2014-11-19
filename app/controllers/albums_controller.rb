class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.order("created_at desc")
    @new_albums = Album.order("created_at desc")
    @old_albums = Album.order("created_at asc")
    @album_first=Album.first
    @posts = Post.all
    @notifications = Notification.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album_first=Album.first
        @album_first_id=@album_first.id
        @albums_remain=Album.where('id NOT IN(?)', @album_first_id)
        @album = Album.find(params[:id])
        @posts = Post.all

  end

  # GET /albums/new
  def new
    redirect_to root_path
  end

  # GET /albums/1/edit
  def edit
    redirect_to root_path
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  

  # DELETE /albums/1
  # DELETE /albums/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :banner, :cover)
    end
end
