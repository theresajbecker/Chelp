Feature: The Specific Charity Review Page
This is the specific charity review page where you create a review for a specific charity. 

Given I am on a “Specific Charity Review” page

Scenario: Navigate to the user’s profile who created a review
When I follow "User" 
Then I should be on the “Users profile “

Scenario: Navigate to the charity homepage
When I follow "Specific Charity" 
Then I should be on the “Charities Homepage”

Scenario: Navigate to the “Sign Up” page for a new user
When I follow "Create User"
Then I should be on the “Sign Up” page

Scenario: Navigate to create a new review
When I follow "Create Review"
Then I should be on the “Create Review” page

Scenario: Navi"ate back to the Chelp homepage
When I follow "Home"
Then I should be on the “Chelp Homepage” 



