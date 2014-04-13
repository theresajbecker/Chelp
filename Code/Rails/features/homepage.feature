Feature: The Chelp Homepage
 This is the Chelp homepage where the user should first be taken.
 
 
Given I am on the Chelp home page

Scenario: Navigate to Login page
When I press "Login" 
Then I should be on the Login page

Scenario: Navigate to Contact Us page
When I press "Contact Us"
Then I should be on the Login page

Scenario: Navigate to Sign-Up page
When I press "Sign-Up" 
Then I should be on the New User Registration page

Scenario: Navigate to Specific Charity's page
When I press "Specific Charity"
Then I should be on the Specific Charity’s home-page

Scenario: Organize Charities by Name
When I follow "name"
Then I should see charity names in alphabetical order 