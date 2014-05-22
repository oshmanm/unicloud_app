class Building < ActiveRecord::Base
	belongs_to :university
	has_many :classrooms
end