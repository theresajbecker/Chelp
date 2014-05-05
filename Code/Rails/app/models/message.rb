class Message < ActiveRecord::Base

include ActiveModel::Validations
	
validates :email, :message, presence: true, uniqueness: true
validates :first_name, :last_name, presence: true 

	def self.create!(raw_parameters)
		@obj = new
		@obj.first_name = raw_parameters[:first_name]
		@obj.last_name = raw_parameters[:last_name]
		@obj.username = raw_parameters[:username]
		@obj.email = raw_parameters[:email]
		@obj.message = raw_parameters[:message]
		@obj.save

		return @obj
	end

	def self.create(raw_parameters)
		@obj = new
		@obj.first_name = raw_parameters[:first_name]
		@obj.last_name = raw_parameters[:last_name]
		@obj.username = raw_parameters[:username]
		@obj.email = raw_parameters[:email]
		@obj.message = raw_parameters[:message]
		@obj.save

		return @obj
	end


end
