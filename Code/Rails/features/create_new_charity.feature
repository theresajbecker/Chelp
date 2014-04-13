Feature: The Create New Charity Page
This is the Create New Charity Page where you will fill in the details of a charity. 

Given I am on the “Create New Charity” page

Scenario: Fill in the “Charity Name”
Then I should see a mandatory field for “Charity Name”
And this field should populate the new charity’s “Name” in the database

Scenario: Fill in the “Area of Impact” 
Then I should see a mandatory pull down menu for “Area of Impact”
And this field should populate the new charity’s “Area of Impact” in the database

Scenario: Fill in the “Religious Affiliation”
Then I should see a mandatory pull down menu for “Religious Affiliation”
And this field should populate the new charity’s “Religious Affliliation” in the database

Scenario: Fill in the” Region”
Then I should see a mandatory pull down menu for “Region”
And this field should populate the new charity’s “Region” in the database

Scenario: “Fill in the Financial Health Rating”
Then I should see a mandatory pull down menu for Financial Health Rating 
And this field should populate the new charity’s “Financial Health Rating” in the database

Scenario: Fill in the “Accountability and Transparency” 
Then I should see a mandatory pull down menu Accountability and Transparency
And this field should populate the new charity’s “Accountability and Transparency” in the database

Scenario: Fill in the “How to Donate”
Then I should see a field for “How to Donate” 
And this field should populate the new charity’s “How to Donate” in the database

Scenario: Submitting information, clearing the form, and returning to Specific Charity’s homepage
And I click on the “Submit Button”
Then I should verify that all mandatory fields contain information
And the form should be cleared 
And I should be taken to the new “Specific Charity’s Homepage”

Scenario: Navigate to Chelp Homepage
And I click on “Home”
Then I should be taken to the “Chelp Homepage” 

 


