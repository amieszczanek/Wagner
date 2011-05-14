class Destination < ActiveRecord::Base
  has_many :seats, :dependent => :destroy
end
