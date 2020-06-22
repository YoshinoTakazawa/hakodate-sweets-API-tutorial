class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      t.string :area
      t.string :postcode
      t.string :address
      t.string :openingHoursSpecification
      t.string :closed
      t.string :parking
      t.string :eatin
      t.string :email
      t.string :latitude
      t.string :longitude
      t.string :telephone
      t.string :imagePath

      t.timestamps
    end
  end
end
