Feature: Create New User Page
  This is the Create New User Page where a new user will enter their information.

Background: users does not already esist
  
  Given the following users do not exist:
  | Alec  | Thilenius | AThilenius | MeNoLikeRails |

  And I am on the New User page

Scenario: Create a User
  When I fill in the following:
    | First Name | Alec          |
    | Last Name  | Thilenius     |
    | Login      | AThilenius    |
    | Password   | MeNoLikeRails |
  And I press "Create"
  Then the following users should exist
    | Alec  | Thilenius | AThilenius | MeNoLikeRails |