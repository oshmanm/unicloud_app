class User < ActiveRecord::Base
	has_one :university
	has_many :courses
	belongs_to :university
end