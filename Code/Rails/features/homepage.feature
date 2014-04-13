Feature: The Chelp Homepage
 This is the Chelp homepage where the user should first be taken.
 
 
Given I am on the Chelp home page

Scenario: Navigate to Login page
When I click on the login button
Then I should be on the Login page

Scenario: Navigate to Contact Us page
When I click in the Contact Us button
Then I should be on the Login page

Scenario: Navigate to Sign-Up page
When I click on Sign-Up button
Then I should be on the New User Registration page

Scenario: Navigate to Specific Charity's page
when I click on a Specific Charity
Then I should be on the Specific Charity’s home-page

Scenario: Organize Charities by Name
When I check “Charity Name” from the list of Charities charities 
And I press “Submit”
Then I should see “Charity Name” in alphabetical order 