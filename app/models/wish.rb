class Wish < ActiveRecord::Base

  mount_uploader :image, WishImageUploader


  belongs_to :wedding
  belongs_to :user

end
