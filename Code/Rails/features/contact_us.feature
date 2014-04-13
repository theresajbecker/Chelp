Feature: This is the contact page. 
The contact page will be seen on the homepage. When you click on this button, you will be directed to information you can submit. 

Given I am on the “Contact Us” page

Scenario: Fill in First Name. 
And I fill in the Mandatory Submission field for my “First Name”
Then this field should populate a database

Scenario: Fill in Last Name. 
And I fill in the Mandatory Submission field for my “Last Name”
Then this field should populate a database

Scenario: Fill in Username. 
And I fill in the Mandatory Submission field for my “User Name”
Then this field should populate a database

Scenario: Fill in Email. 
And I fill in the Mandatory Submission field for my  “Email”
Then this field should populate a database

Scenario: Fill in a message. 
And I fill in the Mandatory Submission field for my  “Message”
Then this field should populate a database

Scenario: Submit your information. 
And I click on the “Submit” button
Then the fields will populate the database 

Scenario: Information cleared after submission
And I click the “submit” button
Then the Fields will clear after successful submission

Scenario: Confirmation message when submitted. 
And I click on the “Submit” Button
Then a “Thank you for contacting us” message will be shown for 5 seconds
And be routed back to our previous page

Scenario: Redirecting to the homepage. 
And I click on “Home”
Then I should be taken to the “Chelp Homepage”



