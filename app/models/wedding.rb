class Wedding < ActiveRecord::Base

  has_many :users through: :attending

end
