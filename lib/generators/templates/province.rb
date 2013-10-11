class Province < ActiveRecord::Base
	attr_accessible :name

	has_many :cities

	validates_presence_of :name

end