class Size < ApplicationRecord
  belongs_to :product
  has_many :user_gears
end
