class Product < ApplicationRecord
  belongs_to :brand
  has_many :galleries
  has_many :sizes
  mount_uploader :photo, PhotoUploader
end
