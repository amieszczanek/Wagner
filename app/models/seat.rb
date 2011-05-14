class Seat < ActiveRecord::Base
  belongs_to :destination
  
  validates :nazwisko, :length => { :minimum => 4 }
  validates_numericality_of :telefon
  validates :nazwisko, :presence => true
  validates :telefon, :presence => true
end
