class CreateSweetCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :sweet_categories do |t|
      t.references :sweet, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
