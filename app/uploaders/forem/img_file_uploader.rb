module Forem
  class ImgFileUploader < CarrierWave::Uploader::Base
    storage :file

    def extension_white_list
      %w(jpg jpeg png JPG JPEG PNG)
    end

    def store_dir
      "system/uploads/forem/#{model.class.name.underscore}/#{mounted_as}/#{model.id}"
    end
  end
end