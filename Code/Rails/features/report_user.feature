Feature: This is the report user page
  The report user page will be seen on the homepage. When you click on this button, you will be directed to information you can submit. 

Given I am on the Report User page

Scenario: Submit Feedback
  When I fill in the following:
    | First Name  | Alec                    |
    | Last Name   | Thilenius               |
    | UserName    | AThilenius              |
    | Violator's Username | ErikKierstead   |
    | Email       | alec_thil@hotmail.com   |
    | Message     | User Swore Like A Sailor|
  And I press "Submit"
  Then I should be on the Chelp home page

Scenario: Redirecting to the homepage
  When I follow "Home"
  Then I should be on to the Chelp home page
