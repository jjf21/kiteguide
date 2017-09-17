class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  # version :small do
  #   resize_to_fit 800, 600
  # end

  version :small_caroussel do
    cloudinary_transformation height: 160, width: 214, crop: "fill"
  end  

  version :main_caroussel do
    cloudinary_transformation height: 700, width: 900, crop: "pad", background: 'white'
  end

end
