class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :brand, foreign_key: true
      t.string :model
      t.string :gear_type
      t.string :year
      t.string :description
      t.string :photos
      t.string :video
      t.timestamps
    end
  end
end
