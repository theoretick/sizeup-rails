class Building < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :height, presence: true, numericality: true
	belongs_to :city, :dependent => :destroy
end
