require 'spec_helper'

describe "charities/show" do
  before(:each) do
    @charity = assign(:charity, stub_model(Charity))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
