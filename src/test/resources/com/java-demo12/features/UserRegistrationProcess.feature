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
@unique-email-registration
Scenario Outline: User Registration Process with Unique Email Address
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email              | password              | confirmation_password     |
    | krishna@gmail.com  | ValidPassword123!     | ValidPassword123!         |
@valid-registration
Scenario Outline: User Registration Process
  When I enter a unique email address "<email>"
  And I enter a password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email                     | password            | confirmation          |
    | uniqueuser@example.com    | validpassword123    | validpassword123       |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email in the inbox
  And I log in using the account with "<email>" and "<password>"

  Examples:
    | email             | password             | confirmation_password   |
    | krishna@gmail.com | ValidPassword123     | ValidPassword123        |
@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And I click the "Register" button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password           | confirmation_password  |
    | krishna@gmail.com   | ValidPassword123   | DifferentPassword456    |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password              | confirmation_password    |
    | krishna@gmail.com   | ValidPassword123!     | ValidPassword123!         |
@valid-email-uppercase
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                   | password             | confirmation         |
    | KRISHNA@GMAIL.COM      | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration with Email Containing Numbers
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And I should receive a confirmation email in my inbox
  And I log in using "<email>" and "<password>"

  Examples:
    | email              | password           | confirmation       |
    | user123@gmail.com  | ValidPassword123   | ValidPassword123    |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using "<email>"

  Examples:
    | email                | password            | confirmation        |
    | krishna@gmail.com    | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Special Characters
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using "<email>"

  Examples:
    | email                | password                |
    | user+test@gmail.com | ValidPassword123!      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                     | password             | confirmation          |
    | user.name@example.com    | SecurePassword123    | SecurePassword123     |
@plus_sign_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                   | password            | confirmation        |
    | krishna+test@gmail.com  | ValidPassword123    | ValidPassword123     |
@multiple-dots-email
Scenario Outline: User Registration Process with Email Containing Multiple Dots
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password by entering "<confirmation_password>"
  And the user clicks the Register button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                  | password            | confirmation_password  |
    | krishna@gmail.com      | ValidPassword123    | ValidPassword123       |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message is displayed
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                      | password             | confirmation        |
    | krishna_smith@gmail.com    | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm my password as "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email in my inbox
  And I log in using the newly created account

  Examples:
    | email                      | password             | confirmation         |
    | krishna-hyphen@gmail.com   | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process with Consecutive Special Characters
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email                   | password             | confirmation         |
    | user..name@gmail.com   | ValidPassword123!    | ValidPassword123!     |
@valid-email-registration
Scenario Outline: User Registration Process with Numeric Domain Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                    | password            | confirmation        |
    | user123@123domain.com   | SecurePassword123   | SecurePassword123    |
@valid_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the Register button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password               | confirmation          |
    | user@longdomainname.com   | ValidPassword123!      | ValidPassword123!      |
@valid-email-domain
Scenario Outline: Validate Short Domain Email Registration
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email        | password             | confirmation         |
    | user@a.com  | ValidPassword123     | ValidPassword123     |
@valid_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email          | password  | confirmation |
    | a@example.com  | Pass123   | Pass123      |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then I should see a success message on the screen
  And I should receive a confirmation email in the inbox
  And I log in using the newly created account

  Examples:
    | email     | password            | confirmation        |
    | a@b.com   | ValidPassword123    | ValidPassword123     |
@valid-email-subdomain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                   | password              | confirmation         |
    | user@mail.example.com   | ValidPassword123      | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user can log in using the newly created account

  Examples:
    | email                | password            | confirmation       |
    | krishna@gmail.co    | ValidPassword123    | ValidPassword123    |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email          | password            |
    | user@example   | ValidPassword123    |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                     | password               | confirmation_password     |
    | longusername@example.com  | ValidPassword123!      | ValidPassword123!         |
@valid-registration-special-chars
Scenario Outline: User Registration Process with Special Characters in Email
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And the user should receive a confirmation email in the inbox
  And the user can log in using the newly created account

  Examples:
    | email                 | password              | confirmation_password   |
    | user!name@gmail.com  | ValidPassword123      | ValidPassword123        |
@valid-registration-special-char
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password            | confirmation         |
    | user!@example.com    | ValidPassword123    | ValidPassword123      |
@valid-email-registration
Scenario Outline: Validate Email Address with Mixed Case Username
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                  | password                | confirmation           |
    | KrIsHnA@gmail.com     | ValidPassword123!       | ValidPassword123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email               | password             | confirmation_password  |
    | user123@gmail.com  | ValidPassword123     | ValidPassword123       |
@valid-email-trim
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And the user clicks the Register button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should log in using the newly created account

  Examples:
    | email                  | password            | confirmation_password   |
    | " krishna@gmail.com "  | "validPassword123"  | "validPassword123"      |
@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                   | password              | confirmation          |
    | user!name@domain.com   | ValidPassword123!     | ValidPassword123!     |
@valid-email-registration
Scenario Outline: User Registration Process with Special Characters
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear indicating account creation
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email            | password            | confirmation      |
    | "!@example.com"  | "ValidPassword123"  | "ValidPassword123" |
@invalid-email
Scenario Outline: User Registration Process with Improperly Formatted Email
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message indicating invalid email format should appear
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email    | password           | confirmation         |
    | abc@     | ValidPassword123   | ValidPassword123     |
@empty-email
Scenario Outline: User Registration Process with Empty Email
  Given the user is on the Registration Page
  And the email field is empty
  When I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And I click the Register button
  Then an error message appears indicating the email field is required
  And the account is not created
  And the user remains on the registration page

  Examples:
    | password            | confirmation        |
    | ValidPassword123    | ValidPassword123     |
@duplicate-email-registration
Scenario Outline: User Registration with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password            | confirmation       |
    | krishna@gmail.com  | ValidPassword123    | ValidPassword123    |
@invalid-password-mismatch
Scenario Outline: User Registration Process with Non-Matching Passwords
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation_password>" in the confirmation field
  And the user clicks the "Register" button
  Then the user should see an error message indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password            | confirmation_password  |
    | krishna@gmail.com   | ValidPassword123    | DifferentPassword456    |
@invalid-password
Scenario Outline: User Registration Process with Weak Password
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a password "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the password does not meet complexity requirements
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | 12345    | 12345        |
@empty-password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user leaves the password field empty
  And the user enters "<confirmation_password>" in the confirmation field
  And the user clicks the Register button
  Then an error message indicating the password field is required should appear
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | confirmation_password |
    | krishna@gmail.com  |                      |
@invalid-password-length
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password does not meet the minimum length requirement
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email              | password |
    | krishna@gmail.com  | short    |
@empty_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I leave the confirmation password field empty
  And I click the "Register" button
  Then an error message appears indicating the confirmation password field is required
  And the account is not created
  And the user remains on the registration page

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@invalid-email
Scenario Outline: User Registration Process with Email Containing Spaces
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating spaces are not allowed in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password              | confirmation         |
    | abc @gmail.com    | ValidPassword123      | ValidPassword123      |
@invalid-email
Scenario Outline: User Registration with Invalid Email Address
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then an error message should appear indicating invalid characters in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password               | confirmation          |
    | abc@      | ValidPassword123!      | ValidPassword123!      |
@max_length_email_registration
Scenario Outline: User Registration Process with Maximum Length Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be successfully logged in using the newly created account

  Examples:
    | email                            | password              | confirmation         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |
@invalid-email-format
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the Register button
  Then an error message should appear indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password               | confirmation          |
    | abc@@example.com    | ValidPassword123!      | ValidPassword123!      |
@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then an error message should be displayed indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password            | confirmation        |
    | abc@      | ValidPassword123    | ValidPassword123     |
@concurrent-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button in two different browsers simultaneously
  Then I should see a success message in one browser
  And I should see an error message in the other browser
  And only one account should be created in the database
  And I log in using the newly created account

  Examples:
    | email              | password            | confirmation         |
    | krishna@gmail.com  | ValidPassword123    | ValidPassword123      |
@max-length-password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And the user clicks the "Register" button
  Then a success message appears indicating account creation
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password                                              | confirmation_password                                     |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa... | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa... |
@max_length_registration
Scenario Outline: User Registration Process with Maximum Length Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then the success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email              | password                              |
    | krishna@gmail.com  | <1000 times 'a'>                     |
@max-special-character-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the account

  Examples:
    | email                           | password                | confirmation_password |
    | a!@#$%^&*()_+[]{}|;':,.<>?~    | ValidPassword123!      | ValidPassword123!      |
