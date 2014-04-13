Feature: This is the User Profile page. 
This is the user profile page where you can see user information when navigated to from the homepage. 

Given I am on the “User Profile” page

Scenario: User information 
Then I should see “User Name”
And “Profile Picture”
And “User Contact Info”
And “Charity Affiliation”

Scenario: Navigating to the “Report User” page
And I click on “Report User”
Then I should be taken to the “Report User” page

Scenario: Navigate to the Chelp Homepage
And I click on “Home”
Then I should be taken to the “Chelp Homepage” 



