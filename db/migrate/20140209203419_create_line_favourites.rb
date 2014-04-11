class CreateLineFavourites < ActiveRecord::Migration
  def change
    create_table :line_favourites do |t|
      t.references :location, index: true
      t.belongs_to :favorite, index: true

      t.timestamps
    end
  end
end
