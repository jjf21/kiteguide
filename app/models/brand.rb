class Brand < ApplicationRecord
  has_many :products, dependent: :destroy
  mount_uploader :logo, PhotoUploader
end
