class Seat < ActiveRecord::Base
  belongs_to :destination
  
  validates :nazwisko, :length => { :minimum => 4 }
end
