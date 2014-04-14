Feature: The Chelp Homepage
 This is the Chelp homepage where the user should first be taken.
 
 Background: Charities have been added to database
  
  Given the following charities exist:
    | name       | description      | filter_flags |
    | TestName   | TestDescription  | TestFlags    |
    | CTestName  | CTestDescription | Flags        |
    | BTestName  | BTestDescription | Flags        |
    | ATestName  | ATestDescription | Flags        |

  And I am on the Chelp home page

Scenario: Navigate to Login page
  When I follow "Login" 
  Then I should be on the Login page

Scenario: Navigate to Contact Us page
  When I follow "Contact Us"
  Then I should be on the Contact Us page

Scenario: Navigate to Sign-Up page
  When I follow "Sign-Up"
  Then I should be on the New User page

Scenario: Organize Charities by Name
  When I follow "Name"
  When I follow "Name"
  Then I should see charity names in alphabetical order