class Message < ActiveRecord::Base
include ActiveModel::Validations

	attr_accessible :first_name, 
					:last_name, 
					:username, 
					:email, 
					:password


end
