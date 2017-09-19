class CreateUserGears < ActiveRecord::Migration[5.1]
  def change
    create_table :user_gears do |t|
      t.references :size, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
