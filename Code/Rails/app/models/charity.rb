class Charity < ActiveRecord::Base
include ActiveModel::Validations
		
	def self.create!(raw_parameters)
		@obj = new
		@obj.name = raw_parameters[:name]
		@obj.description = raw_parameters[:description]
		@obj.filter_flags = raw_parameters[:filter_flags]
		@obj.geographic_region = raw_parameters[:geographic_region]
		@obj.area_of_impact = raw_parameters[:area_of_impact]
		@obj.percent_of_overhead = raw_parameters[:percent_of_overhead]
		@obj.religious_affiliation = raw_parameters[:religious_affiliation]
		@obj.how_to_donate = raw_parameters[:how_to_donate]
		@obj.charity_homepage = raw_parameters[:charity_homepage]
		@obj.charity_image = raw_parameters[:charity_image]
		@obj.save

		return @obj
	end
		
	def self.create(raw_parameters)
		@obj = new
		@obj.name = raw_parameters[:name]
		@obj.description = raw_parameters[:description]
		@obj.filter_flags = raw_parameters[:filter_flags]
		@obj.geographic_region = raw_parameters[:geographic_region]
		@obj.area_of_impact = raw_parameters[:area_of_impact]
		@obj.percent_of_overhead = raw_parameters[:percent_of_overhead]
		@obj.religious_affiliation = raw_parameters[:religious_affiliation]
		@obj.how_to_donate = raw_parameters[:how_to_donate]
		@obj.charity_homepage = raw_parameters[:charity_homepage]
		@obj.charity_image = raw_parameters[:charity_image]
		@obj.save

		return @obj
	end

end

