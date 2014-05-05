class Charity < ActiveRecord::Base
include ActiveModel::Validations
<<<<<<< HEAD
	attr_accessible :name, 
					:description, 
					:filter_flags, 
					:geographic_region, 
					:area_of_impact, 
					:percent_of_overhead, 
					:religious_affiliation, 
					:how_to_donate, 
					:charity_homepage
					
	attr_accessor  :name, :description, :filter_flags, :geographic_region, :area_of_impact, :percent_of_overhead, :religious_affiliation, :how_to_donate, :charity_homepage

	validates :name, :description, :filter_flags, :geographic_region, :area_of_impact, :percent_of_overhead, :religious_affiliation, :how_to_donate, :charity_homepage, presence: true 							
=======
		
>>>>>>> 69963e3a681e1c23ce153fe6b22f5ccbc3787e0c

end

