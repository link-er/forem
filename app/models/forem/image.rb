module Forem
  class Image < ActiveRecord::Base
    validates :img_file, presence: true

    belongs_to :post

    mount_uploader :img_file, ImgFileUploader
  end
end