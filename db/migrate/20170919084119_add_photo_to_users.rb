class AddPhotoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :photo, :string
    add_column :users, :kiting_since, :integer
    add_column :users, :level, :string
  end
end
