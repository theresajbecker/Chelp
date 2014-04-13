Feature: The Charity specific’s view
This is the charity specific’s view where the user can navigate from the homepage to see the charity details. 

Given I am on a “Specific Charity homepage”

Scenario: Navigating to the reviews
When I click on “Reviews”
Then I should be taken to the “Specific Users Reviews” page

Scenario: Navigate to creating a review
When I click on “Create Review”
Then I should be taken to the “Create Review” if I have not created a “Review” for this Charity already

Scenario: Navigate back to the home page. 
When I am on a “Specific Charity homepage”
And I click on “Home”
Then I should be taken to the “Chelp Homepage” 








