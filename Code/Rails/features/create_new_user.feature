Feature: The Create New User Page
This is the Create New User Page where a new user will enter their information.

Given I am on the “Create New User” page

Scenario: Make sure the “User Name” does not already exist. 
And I enter my “User Name “
Then I should verify that this “User Name” does not already exist

Scenario: User Information
Then I should see a mandatory field for “First Name” 
And a mandatory field for “Last Name”
And a mandatory field for “Email”
And a mandatory field for “Charity Affiliation” 

Scenario: Picture Submission
Then I should see field for “Picture Submission”  

Scenario: Submitting, populating the database, and clearing the form
And I click on “Submit”
Then I should verify that all mandatory fields contain text
And then the fields should populate a database and “User Profile” 
And the form should be cleared 

Scenario: Navigate to “User Profile” page
And I click on “Submit”
Then I should be taken to the new “User Profile” page

Scenario: Navigate to Chelp Homepage
And I click on “Home”
Then I should be taken to the “Chelp Homepage”




