Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email
Scenario Outline: User Registration Process with Empty Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element is displayed
  And the error message text equals "Email is required"

  Examples:
    | email | password        | confirmPassword   |
    |       | Password123!    | Password123!      |@confirmation_email_sent
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked with no errors
  And the confirmation email should be logged as sent to "<email>"

  Examples:
    | email                   | password        | confirmPassword    |
    | test_email@example.com  | Password123!    | Password123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field matches the password
  And the confirmation message should be displayed

  Examples:
    | email                     | password          | confirmPassword     |
    | valid_user@example.com    | ValidPass456!     | ValidPass456!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked and no errors should occur
  And the confirmation message should be displayed

  Examples:
    | email                     | password                   | confirmPassword             |
    | unique_user@example.com   | AnotherSecurePass123!      | AnotherSecurePass123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password               | confirmPassword         |
    | test_user@example.com   | SecurePass123!        | SecurePass123!          |
    | invalid-email           | ValidPass123!         | ValidPass123!           |
    |                        | ValidPass123!         | ValidPass123!           |
    | test_user@example.com   |                       |                         |
    | test_user@example.com   | short                 | short                   |
    | test_user@example.com   | SecurePass123!        | DifferentPass456!       |
@password-mismatch-test
Scenario Outline: User Registration Process with Mismatched Passwords
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text should equal "Passwords do not match"

  Examples:
    | email                   | password        | confirmPassword        |
    | test_user@example.com   | Password123!    | DifferentPassword456!   |
@short_password_error
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message text "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |
@duplicate-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message element displayed
  And the error message text should equal "Email already exists"

  Examples:
    | email                         | password           | confirmPassword      |
    | existing_user@example.com     | ValidPass123!      | ValidPass123!        |
@password_required_error
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should be "<currentUrl>"
  And the email field should contain "<email>"
  And the password field should be empty
  And the Register button should be clicked
  And the error message should be displayed
  And the error message text should equal "<errorMessage>"

  Examples:
    | email                   | password | confirmPassword | currentUrl                     | errorMessage             |
    | test_user@example.com   |          |                  | https://app.example.com/register | Password is required      |
@invalid-email
Scenario Outline: User Registration Process with Invalid Email
  Given the user navigates to registration URL: "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element should be displayed
  And the error message text should equal "Please enter a valid email address"

  Examples:
    | email          | password          | confirmPassword    |
    | invalid-email  | ValidPass123!     | ValidPass123!      |
@duplicate-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message element displayed
  And the error message text should equal "Email already exists"

  Examples:
    | email                         | password           | confirmPassword      |
    | existing_user@example.com     | ValidPass123!      | ValidPass123!        |
@invalid-email
Scenario Outline: User Registration Process with Invalid Email
  Given the user navigates to registration URL: "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element should be displayed
  And the error message text should equal "Please enter a valid email address"

  Examples:
    | email          | password          | confirmPassword    |
    | invalid-email  | ValidPass123!     | ValidPass123!      |
@invalid-email
Scenario Outline: User Registration Process with Empty Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element is displayed
  And the error message text equals "Email is required"

  Examples:
    | email | password        | confirmPassword   |
    |       | Password123!    | Password123!      |
@invalid-password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the user should see an error message "Password must contain at least one special character"

  Examples:
    | email                   | password             | confirmPassword        |
    | test_user@example.com   | NoSpecialChar123     | NoSpecialChar123       |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I should see the error message "<errorMessage>"

  Examples:
    | email                     | password          | confirmPassword     | errorMessage                                   |
    | test_user@example.com     | NoNumbersHere!    | NoNumbersHere!      | Password must contain at least one number      |
@invalid-password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the user should see an error message "Password must contain at least one special character"

  Examples:
    | email                   | password             | confirmPassword        |
    | test_user@example.com   | NoSpecialChar123     | NoSpecialChar123       |
ter | Password is required      |
@password-mismatch-test
Scenario Outline: User Registration Process with Mismatched Passwords
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text should equal "Passwords do not match"

  Examples:
    | email                   | password        | confirmPassword        |
    | test_user@example.com   | Password123!    | DifferentPassword456!   |
hort           |
      | Password must contain at least one number      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the confirmation message

  Examples:
    | email                                                   | password          | confirmPassword    |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123!   | SecurePass123!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL "https://app.example.com/register"
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password            | confirmPassword      |
    | Test_User@example.com     | SecurePass123!      | SecurePass123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked and no errors should occur
  And the confirmation message should be displayed

  Examples:
    | email                       | password          | confirmPassword    |
    | test_user+tag@example.com  | SecurePass123!    | SecurePass123!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I navigate to the registration URL "<registrationURL>"
  And I enter the email "<email>" in the email field
  And I enter the password "<password>" in the password field
  And I enter the password "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | registrationURL                | email                       | password          | confirmPassword    |
    | https://app.example.com/register | test123_user@example.com   | SecurePass123!   | SecurePass123!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match password
  And the Register button should be clicked and no errors should occur
  And the confirmation message should be displayed

  Examples:
    | email                   | password   | confirmPassword |
    | test_user@example.com   | P@ssw0rd   | P@ssw0rd        |
@valid-registration
Scenario Outline: User Registration Process
  When the user navigates to the registration URL
  And the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the confirmation message

  Examples:
    | email                    | password          | confirmPassword     |
    | test_user@example.com    | SecurePass123!    | SecurePass123!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                    | password            | confirmPassword      |
    | test-user@example.com    | SecurePass123!      | SecurePass123!       |
@successful-registration
Scenario Outline: User Registration Process
  When I navigate to the registration URL "https://app.example.com/register"
  And I enter the email "<email>" in the email field
  And I enter the password "<password>" in the password field
  And I enter the password "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I wait for the confirmation message to appear

  Examples:
    | email                  | password          | confirmPassword     |
    | test.user@example.com  | SecurePass123!    | SecurePass123!      |
