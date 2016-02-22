class User < ActiveRecord::Base
	has_secure_password		#This is necessary for the Bcrypt gem
	has_many :comments
	
	validates_uniqueness_of :email		#Allows for a unique email for each user
end
