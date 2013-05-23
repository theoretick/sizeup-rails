class City < ActiveRecord::Base
  has_many :buildings, :dependent => :destroy
end
