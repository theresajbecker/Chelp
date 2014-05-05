class Message < ActiveRecord::Base
include ActiveModel::Validations

<<<<<<< HEAD
	attr_accessible :first_name, 
					:last_name, 
					:username, 
					:email 
	attr_accessor :first_name, :last_name, :username, :email
	
validates :email, :username, presence: true, uniqueness: true
validates :first_name, :last_name, presence: true 
=======
>>>>>>> 69963e3a681e1c23ce153fe6b22f5ccbc3787e0c

end
