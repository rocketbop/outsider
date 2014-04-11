class LineFavouritesController < ApplicationController
  before_action :set_line_favourite, only: [:show, :edit, :update, :destroy]

  # GET /line_favourites
  # GET /line_favourites.json
  def index
    @line_favourites = LineFavourite.all
  end

  # GET /line_favourites/1
  # GET /line_favourites/1.json
  def show
  end

  # GET /line_favourites/new
  def new
    @line_favourite = LineFavourite.new
  end

  # GET /line_favourites/1/edit
  def edit
  end

  # POST /line_favourites
  # POST /line_favourites.json
  def create
    @line_favourite = LineFavourite.new(line_favourite_params)

    respond_to do |format|
      if @line_favourite.save
        format.html { redirect_to @line_favourite, notice: 'Line favourite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line_favourite }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_favourites/1
  # PATCH/PUT /line_favourites/1.json
  def update
    respond_to do |format|
      if @line_favourite.update(line_favourite_params)
        format.html { redirect_to @line_favourite, notice: 'Line favourite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line_favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_favourites/1
  # DELETE /line_favourites/1.json
  def destroy
    @line_favourite.destroy
    respond_to do |format|
      format.html { redirect_to line_favourites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_favourite
      @line_favourite = LineFavourite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_favourite_params
      params.require(:line_favourite).permit(:location_id, :favorite_id)
    end
end
