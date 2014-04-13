require 'spec_helper'

describe "charities/index" do
  before(:each) do
    assign(:charities, [
      stub_model(Charity),
      stub_model(Charity)
    ])
  end

  it "renders a list of charities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
