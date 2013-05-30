class Building < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :height, presence: true, numericality: true
	belongs_to :city
	
    # method for CSV Import, take a file variable (csv file object) 
    # the headers parameter tells the CSV object that the first row contains the headers
    # Headers are the key's to be used in the hash-per-row building creation.
	def self.import(file)
	  CSV.foreach(FILE.path, headers: true) do |row|
	    Building.create! row.to_hash
	  end
	end
end
