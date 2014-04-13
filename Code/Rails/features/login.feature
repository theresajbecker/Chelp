Feature: This is Login page.
This page will be seen on the homepage and can be accessed by users that have an account. 

Given I am on the Chelp Login Page

Scenario: Navigate to Google Sign In
When I click on Google Sign In 
Then I should be on the Google Sign In page

Scenario: Navigate to successful Login
Given I enter my “User Name” and “Password” using OmniAuth or Chelp Sign In
And I click on “Submit”
Then I should be logged in

Scenario: Navigate to Home Page Redirect
And I click on “Home”
Then I should be taken to the “Chelp Homepage” 



