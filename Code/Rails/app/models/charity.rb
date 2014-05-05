class Charity < ActiveRecord::Base
include ActiveModel::Validations

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

end

