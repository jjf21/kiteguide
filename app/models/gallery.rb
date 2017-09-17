class Gallery < ApplicationRecord
  belongs_to :product
  mount_uploader :photo, PhotoUploader
end
