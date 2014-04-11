class Location < ActiveRecord::Base

	validates :title, :description, presence: true
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: 		%r{\.(gif|jpg|png)\Z},
		message: 	'must be a URL for GIF, jpeg, or PNG image.'

	}
end
