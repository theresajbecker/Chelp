class Message < ActiveRecord::Base
include ActiveModel::Validations

	attr_accessible :first_name, 
					:last_name, 
					:username, 
					:email 
	attr_accessor :first_name, :last_name, :username, :email
	
validates :email, :username, presence: true, uniqueness: true
validates :first_name, :last_name, presence: true 

end
