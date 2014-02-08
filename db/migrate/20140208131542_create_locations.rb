class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :street
      t.type :string
      t.timestamps
    end
  end
end
