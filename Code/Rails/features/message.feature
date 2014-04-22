Feature: Contact Us page using Messages
  The contact page will be seen on the homepage. When you click on this button, you will be directed to information you can submit.

Background: Page Check
  Given I am on the Contact Us page

Scenario: Submit Feedback
  When I fill in the following:
    | First Name  | Alec                    |
    | Last Name   | Thilenius               |
    | Username    | AThilenius              |
    | Email       | alec_thil@hotmail.com   |
    | Message     | Your app sucks total... |

  And I press "Create"
  Then the following messages should exist
    | Alec  | Thilenius | AThilenius | alec_thil@hotmail.com | Your app sucks total... |

Scenario: Redirecting to the homepage from Contact Us
  Given I am on the Contact Us page
  When I follow "Home"
  Then I should be on the Chelp home page