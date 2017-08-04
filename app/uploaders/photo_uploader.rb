# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end


