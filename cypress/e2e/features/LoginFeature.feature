Feature: Login Page Tests

  Background: 
    Given the user visits the login page

  Scenario: Successful login with valid credentials for standard_user
    When the user logs in with username "standard_user" and password "secret_sauce"
    Then the user should be redirected to the inventory page

  Scenario: Successful login with valid credentials for problem_user
    When the user logs in with username "problem_user" and password "secret_sauce"
    Then the user should be redirected to the inventory page

  Scenario: Successful login with valid credentials for performance_glitch_user
    When the user logs in with username "performance_glitch_user" and password "secret_sauce"
    Then the user should be redirected to the inventory page

  Scenario: Successful login with valid credentials for visual_user
    When the user logs in with username "visual_user" and password "secret_sauce"
    Then the user should be redirected to the inventory page

  Scenario: Invalid login with incorrect username
    When the user logs in with username "invalidUsername" and password "secret_sauce"
    Then the user should see an error message "Epic sadface: Username and password do not match any user in this service"

  Scenario: Invalid login with incorrect password
    When the user logs in with username "standard_user" and password "wrongPassword"
    Then the user should see an error message "Epic sadface: Username and password do not match any user in this service"

  Scenario: Empty username field
    When the user leaves the username field empty and enters password "secret_sauce"
    Then the user should see an error message "Epic sadface: Username is required"

  Scenario: Empty password field
    When the user enters username "standard_user" and leaves the password field empty
    Then the user should see an error message "Epic sadface: Password is required"

  Scenario: Both fields empty
    When the user leaves both fields empty and submits the form
    Then the user should see an error message "Epic sadface: Username is required"

  Scenario: Password should be masked
    When the user enters a password "myPassword"
    Then the password should be masked

  Scenario: Toggle password visibility
    When the user enters a password "myPassword" and clicks the visibility toggle
    Then the password should be visible
    When the user clicks the visibility toggle again
    Then the password should be masked

  Scenario: SQL injection attempt
    When the user logs in with username "' OR 1=1 --" and password "secret_sauce"
    Then the user should see an error message "Epic sadface: Username and password do not match any user in this service"

  Scenario: XSS attempt
    When the user logs in with username "<script>alert('XSS')</script>" and password "secret_sauce"
    Then the user should see an error message "Epic sadface: Username and password do not match any user in this service"

  Scenario: Verify login page responsiveness
    Given the user visits the login page on a mobile device
    Then the username and password fields should be visible
