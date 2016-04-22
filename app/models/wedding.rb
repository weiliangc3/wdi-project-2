class Wedding < ActiveRecord::Base

  mount_uploader :wedding_image, WeddingImageUploader


  has_many :attendances
  has_many :users, through: :attendances

  has_many :wishes

end
