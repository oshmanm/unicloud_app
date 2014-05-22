class University < ActiveRecord::Base
	has_many :buildings
	has_and_belongs_to_many :students
	has_one :catalog
	has_many :courses, through: :catalog
end