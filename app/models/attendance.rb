class Attendance < ActiveRecord::Base

  belongs_to :user
  belongs_to :wedding, dependent: :destroy

end


