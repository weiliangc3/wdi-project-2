class Wedding < ActiveRecord::Base

  mount_uploader :wedding_image, WeddingImageUploader


  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances

  has_many :wishes, dependent: :destroy

  # before_validation :add_default_location

  # private
  #  def add_default_location
  #   self.location = "London, United Kingdom" if self.location.nil?
  #  end
end