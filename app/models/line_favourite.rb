class LineFavourite < ActiveRecord::Base
  belongs_to :location
  belongs_to :favorite
end
