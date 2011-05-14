class Destination < ActiveRecord::Base
  has_many :seats, :dependent => :destroy
  
  validates :wyjazd_z, :presence => true
  validates :przyjazd_do, :presence => true
  validates :termin, :presence => true
end
