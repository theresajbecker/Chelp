Feature: The Specific Charity’s Review Page
This is the specific charity’s review page where you create a review for a specific charity. 

Given I am on a “Specific Charity’s Review” page

Scenario: Navigate to the user’s profile who created a review
And I click on the “User” that created the review
Then I should be taken to the “Users profile “

Scenario: Navigate to the charity’s homepage
And I click on the “Specific Charity” 
Then I should be taken to the “Charities Homepage”

Scenario: Navigate to the “Sign Up” page for a new user
And I click on “Create User”
Then I should be taken to the “Sign Up” page

Scenario: Navigate to create a new review
And I click on “Create Review”
Then I should be taken to the “Create Review” page

Scenario: Navigate back to the Chelp homepage
And I click on “Home”
Then I should be taken to the “Chelp Homepage” 



