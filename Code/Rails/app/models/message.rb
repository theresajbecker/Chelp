class Message < ActiveRecord::Base
include ActiveModel::Validations

	attr_accessible :first_name, 
					:last_name, 
					:message, 
					:email 
	attr_accessor :first_name, :last_name, :message, :email
	
validates :email, :message, presence: true, uniqueness: true
validates :first_name, :last_name, presence: true 

end
