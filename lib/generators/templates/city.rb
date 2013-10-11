class City < ActiveRecord::Base
	attr_accessible :name, :province_id

	belongs_to :province

	validates_presence_of :name

end