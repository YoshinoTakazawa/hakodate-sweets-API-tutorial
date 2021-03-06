class CreateSweets < ActiveRecord::Migration[6.0]
  def change
    create_table :sweets do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :name
      t.string :price
      t.string :description
      t.string :imagePath

      t.timestamps
    end
  end
end
