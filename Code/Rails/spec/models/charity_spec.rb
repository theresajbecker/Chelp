require 'spec_helper'

describe Charity do
  before(:each) do
    charity = Charity.new(:name => 'test', 
                    :description  => 'test',
					:filter_flags  => 'test', 
					:geographic_region  => 'test', 
					:area_of_impact  => 'test', 
					:percent_of_overhead  => 'test', 
					:religious_affiliation  => 'test', 
					:how_to_donate  => 'test', 
					:charity_homepage  => 'test', 
					:charity_image  => 'test',
                    )
	end
	
 it "should require a name" do
  Charity.new(:name => "").should_not be_valid
 end  
 
 it "should require a description" do
  Charity.new(:descripion => "").should_not be_valid
 end  
 
 it "should require a filter_flags" do
  Charity.new(:filter_flags => "").should_not be_valid
 end  
 
 it "should require an geographic region" do
  Charity.new(:geographic_region => "").should_not be_valid
 end  
 
 it "should require area of impact" do
  Charity.new(:area_of_impact => "").should_not be_valid
 end  
 
 it "should require percent of overhead" do
  Charity.new(:percent_of_overhead => "").should_not be_valid
 end 
 
 it "should require religious affiliation" do
  Charity.new(:religious_affiliation => "").should_not be_valid
 end  
 
 it "should require how to donate" do
  Charity.new(:how_to_donate => "").should_not be_valid
 end 
 
 it "should require a charity homepage" do
  Charity.new(:charity_homepage => "").should_not be_valid
 end 
 
 it "should require a charity image" do
  Charity.new(:charity_image => "").should_not be_valid
 end
 




end
