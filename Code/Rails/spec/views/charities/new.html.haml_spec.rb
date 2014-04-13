require 'spec_helper'

describe "charities/new" do
  before(:each) do
    assign(:charity, stub_model(Charity).as_new_record)
  end

  it "renders new charity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charities_path, "post" do
    end
  end
end
