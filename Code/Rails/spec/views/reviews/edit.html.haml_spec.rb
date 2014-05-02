require 'spec_helper'

describe "reviews/edit" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :user => nil,
      :charity => nil,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", review_path(@review), "post" do
      assert_select "input#review_user[name=?]", "review[user]"
      assert_select "input#review_charity[name=?]", "review[charity]"
      assert_select "input#review_title[name=?]", "review[title]"
      assert_select "input#review_description[name=?]", "review[description]"
    end
  end
end
