Feature: Create New Charity Page
  This is the Create New Charity Page where a user will enter charity information.

Background: Charities do not already exist
  
  Given the following charities do not exist:
  | Charity1  | Charity2 | Charity3 | Charity4 |

  And I am on the New Charity page

Scenario: Create a Charity
  When I fill in the following:
    | Name | Super Great Charity   |
    | Description |  Charity for Adoption  |
    | Filter Flags  | Christian  |
  And I press "Create"
  Then the following charities should exist
    | Super Great Charity  | Charity for Adoption | Christian |