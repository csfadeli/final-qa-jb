Feature: Testing - Login 

@login
Scenario: Login with valid credentials (registered email and password)
  Given I go to "https://app2.jubelio.com/login" 
  When I insert my email 
  And I insert my password
  And I click submit button
  Then I can access Jubelio homepage
