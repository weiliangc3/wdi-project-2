class Wish < ActiveRecord::Base

  belongs_to :wedding, dependent: :destroy
  belongs_to :user

end
