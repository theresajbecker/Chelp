class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :charity

    def self.create!(raw_parameters)
		@obj = new
		@obj.title = raw_parameters[:title]
		@obj.description = raw_parameters[:description]
		@obj.user_id = raw_parameters[:user_id]
		@obj.charity_id = raw_parameters[:charity_id]
		@obj.save

		return @obj
	end

	def self.create(raw_parameters)
		@obj = new
		@obj.title = raw_parameters[:title]
		@obj.description = raw_parameters[:description]
		@obj.user_id = raw_parameters[:user_id]
		@obj.charity_id = raw_parameters[:charity_id]
		@obj.save

		return @obj
	end
end