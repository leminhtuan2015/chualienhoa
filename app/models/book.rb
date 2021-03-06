class Book < ActiveRecord::Base
  mount_uploader :image_upload, PictureUploader
  belongs_to :book_store
  has_many :newfeeds, :dependent => :destroy
end
