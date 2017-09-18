class Product < ApplicationRecord
  belongs_to :brand
  has_many :galleries
  has_many :sizes
  has_many :reviews
  mount_uploader :photo, PhotoUploader
end
