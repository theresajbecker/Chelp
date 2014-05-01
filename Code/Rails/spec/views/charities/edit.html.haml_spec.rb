require 'spec_helper'

describe "charities/edit" do
  before(:each) do
    #@charity = assign(:charity) stub_model(Charity)) #checking to see if this helps
	@charity = assign(:name, :description, :filter_flags, :geographic_region, :area_of_impact, :percent_of_overhead, :religious_affiliation, :how_to_donate, :charity_homepage)
  end

  it "renders the edit charity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charity_path(@charity), "post" do
    end
  end
end
