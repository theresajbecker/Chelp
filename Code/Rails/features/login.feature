Feature: Login page
  This page will be seen on the homepage and can be accessed by users that have an account. 


Background: users have been added to database
  
  Given the following users exist:
  | Alec  | Thilenius | AThilenius | MeNoLikeRails |

  And I am on the Login page

Scenario: Navigate to Google Sign In
  When I follow "Google Sign In"
  Then I should be on the Google Sign In page

Scenario: Navigate to successful Login
  When I fill in the following:
    | Login    | AThilenius    |
    | Password | MeNoLikeRails |
  And I press "Login"
  Then I should be on the Chelp home page

Scenario: Navigate to Home Page Redirect
  When I follow "Home"
  Then I should be on the Chelp home page