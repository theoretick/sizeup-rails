class City < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :buildings, :dependent => :destroy
  validates_associated :buildings

# Creates a hash with keys equal to the stringified ids of every city.
# Used for default checkbox params.
  def self.city_id_hash
    city_ids= {}
    cities = City.all
    cities.each do |city|
      city_ids["#{city.id}"] = 1
    end
    return city_ids
  end
end