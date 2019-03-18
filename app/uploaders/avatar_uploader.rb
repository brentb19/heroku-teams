class AvatarUploader < CarrierWave::Uploader::Base
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    "https://image.shutterstock.com/image-vector/vector-shield-icon-450w-521368324.jpg"
  end
end
