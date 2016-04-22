class Wedding < ActiveRecord::Base

  has_many :attendances
  has_many :users, through: :attendances

  has_many :wishes

end
