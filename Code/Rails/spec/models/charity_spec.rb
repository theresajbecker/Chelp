require 'spec_helper'

describe Charity do
  before(:each) do
  let(:charity) { 
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
                    )}

describe "attributes" do                    
                    
#it { should_not allow_mass_assignment_of(:password) } 
it { should allow_mass_assignment_of(:name) }
it { should allow_mass_assignment_of(:description) }
it { should allow_mass_assignment_of(:filter_flags) }
it { should allow_mass_assignment_of(:geographic_region) }
it { should allow_mass_assignment_of(:area_of_impact) }
it { should allow_mass_assignment_of(:percent_of_overhead) }
it { should allow_mass_assignment_of(:religious_affiliation) }
it { should allow_mass_assignment_of(:how_to_donate) }
it { should allow_mass_assignment_of(:charity_homepage) }


   end
end
end
