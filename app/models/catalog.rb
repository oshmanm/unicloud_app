class Catalog < ActiveRecord::Base
	has_one :university
	belongs_to :university
	has_many :courses
end