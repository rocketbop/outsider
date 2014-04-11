module CurrentFavourite
extend ActiveSupport::Concern 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find(session[:favourite_id])
  	rescue ActiveRecord::RecordNotFound
	  	@favourite = Favourite.create
	  	session[:favourite_id] = @favourite_id
    end
end