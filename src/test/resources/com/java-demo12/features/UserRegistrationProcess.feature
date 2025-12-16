Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password as "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                | password              | confirmation_password   |
    | krishna@gmail.com    | ValidPassword123!     | ValidPassword123!        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                      | password              | confirmation          |
    | uniqueuser@example.com     | validpassword123      | validpassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@password_mismatch
Scenario Outline: User Registration Process
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation_password>" in the confirmation field
  And the user clicks the "Register" button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email               | password            | confirmation_password   |
    | krishna@gmail.com   | ValidPassword123    | DifferentPassword456     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@unique-email-registration
Scenario Outline: User Registration with Unique Email Address
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email                  | password               | confirmation          |
    | krishna@gmail.com      | ValidPassword123!      | ValidPassword123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email
  And I log in using the newly created account

  Examples:
    | email              | password             | confirmation        |
    | krishna@gmail.com  | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password as "<confirmation_password>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the created account

  Examples:
    | email                   | password                | confirmation_password     |
    | user+test@gmail.com    | ValidPassword123!       | ValidPassword123!         |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password              |
    | krishna@gmail.com   | StrongPassword123!    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email               | password           | confirmation       |
    | user123@gmail.com  | ValidPassword123   | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: Validate that the system accepts an email address in lowercase during registration
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                  | password             | confirmation         |
    | krishna@gmail.com     | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-uppercase
Scenario Outline: User Registration Process with Uppercase Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                  | password              | confirmation         |
    | KRISHNA@GMAIL.COM     | ValidPassword123      | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration with Email Address Containing Dots
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  Then the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email                    | password              | confirmation         |
    | user.name@example.com    | SecurePassword123     | SecurePassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Hyphen in Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message appears
  And a confirmation email is received in the inbox
  And the user logs in with "<email>"

  Examples:
    | email                      | password            | confirmation       |
    | krishna-hyphen@gmail.com   | ValidPassword123    | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-test
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password             | confirmation        |
    | krishna_smith@gmail.com   | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Consecutive Special Characters
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                   | password              | confirmation         |
    | user..name@gmail.com   | ValidPassword123!     | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email                | password            | confirmation         |
    | krishna@gmail.com    | ValidPassword123    | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User navigates to the registration page
Given the user is on the registration page

@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should indicate account creation
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email        | password  | confirmation |
    | a@example.com | Pass123   | Pass123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-plus-sign
Scenario Outline: User Registration Process with Email Containing Plus Sign
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                     | password            | confirmation        |
    | krishna+test@gmail.com   | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
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
    | email                     | password              | confirmation          |
    | user@longdomainname.com   | ValidPassword123!     | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid_short_domain_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I verify that a confirmation email is received in the inbox
  And I log in using the newly created account

  Examples:
    | email         | password            | confirmation        |
    | user@a.com   | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid_email_registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email
  And I should be able to log in with "<email>" and "<password>"

  Examples:
    | email                  | password             | confirmation         |
    | krishna@gmail.co      | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-subdomain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password            | confirmation        |
    | user@mail.example.com   | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation_password>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the new account
  
  Examples:
    | email            | password            | confirmation_password  |
    | user@example     | ValidPassword123    | ValidPassword123        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration with Email Address having Numeric Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                 | password            | confirmation        |
    | user123@123domain.com | SecurePassword123   | SecurePassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email      | password            | confirmation_password |
    | a@b.com   | ValidPassword123    | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using "<email>"

  Examples:
    | email                     | password               | confirmation_password    |
    | longusername@example.com  | ValidPassword123!      | ValidPassword123!        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user receives a confirmation email
  And the user logs in using the new account

  Examples:
    | email                   | password            | confirmation_password |
    | user!name@gmail.com    | ValidPassword123    | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email              | password            | confirmation       |
    | user123@gmail.com  | ValidPassword123    | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Mixed Case Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email in the inbox
  And I log in using the newly created account

  Examples:
    | email                 | password               | confirmation          |
    | KrIsHnA@gmail.com    | ValidPassword123!      | ValidPassword123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@trim_spaces_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the new account

  Examples:
    | email                       | password             | confirmation         |
    | "  krishna@gmail.com  "    | "validPassword123"   | "validPassword123"    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration-special-characters
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email            | password            | confirmation        |
    | !@example.com    | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@duplicate_email_registration
Scenario Outline: User Registration Process with Existing Email
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then an error message should be displayed indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email                | password             | confirmation         |
    | krishna@gmail.com    | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the new account

  Examples:
    | email              | password             | confirmation        |
    | user!@example.com  | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration with Mixed Special Characters in Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password "<confirmation_password>"
  And the user clicks the Register button
  Then a success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user should log in using the newly created account

  Examples:
    | email                   | password                | confirmation_password     |
    | user!name@domain.com   | ValidPassword123!       | ValidPassword123!         |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-format
Scenario Outline: User Registration Process with Improperly Formatted Email Address
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then an error message should appear indicating invalid email format
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email    | password            | confirmation        |
    | abc@     | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty_email
Scenario Outline: Verify Registration with Empty Email Field
  Given the user is on the Registration Page
  When the user leaves the email field empty
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the Register button
  Then an error message should appear indicating the email field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | password            | confirmation        |
    | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password-length
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then an error message should be displayed indicating the password does not meet the minimum length requirement
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | short    | short        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration with Weak Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating the password does not meet complexity requirements
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password | confirmation |
    | krishna@gmail.com   | 12345    | 12345        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And I click the "Register" button
  Then the user should see an error message indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password           | confirmation_password   |
    | krishna@gmail.com   | ValidPassword123   | DifferentPassword456     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a valid password "<password>"
  And the user leaves the confirmation password field empty
  And the user clicks the "Register" button
  Then an error message should be displayed indicating the confirmation password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password            |
    | krishna@gmail.com   | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the Register button
  Then an error message should appear indicating invalid characters in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password               | confirmation          |
    | abc@    | ValidPassword123!      | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty-password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user leaves the password field empty
  And the user enters "<confirmation password>"
  And the user clicks the Register button
  Then an error message should appear indicating the password field is required
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email               | confirmation password |
    | krishna@gmail.com   |                      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-spacing
Scenario Outline: User Registration Process with Email Containing Spaces
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating spaces are not allowed in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password             | confirmation        |
    | abc @gmail.com    | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@maximum_length_email_registration
Scenario Outline: User Registration Process with Maximum Length Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email             | password             | confirmation         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-format
Scenario Outline: Verify Registration with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password               | confirmation         |
    | abc@@example.com   | ValidPassword123!      | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@max_length_password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then I should see a success message on the screen
  And I should receive a confirmation email in the inbox
  And I should log in using the newly created account

  Examples:
    | email               | password          |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email
Scenario Outline: User Registration with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password             | confirmation          |
    | abc@      | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                            | password               | confirmation_password   |
    | a!@#$%^&*()_+[]{}|;':,.<>?~     | ValidPassword123!     | ValidPassword123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with the new account

  Examples:
    | email               | password    |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@concurrent_registration
Scenario Outline: User Registration Process
  Given the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  When the user clicks the "Register" button in two different browsers simultaneously
  Then one success message should appear
  And one error message should appear
  And only one account should be created in the database
  And the user logs in using the newly created account

  Examples:
    | email              | password            |
    | krishna@gmail.com  | ValidPassword123    |

@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password           | confirmation          |
    | krishna@gmail.com   | ValidPassword123   | DifferentPassword456   |
@unique_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a unique email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email               | password            | confirmation_password   |
    | krishna@gmail.com   | ValidPassword123!   | ValidPassword123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email                | password            | confirmation_password  |
    | krishna@gmail.com    | ValidPassword123    | ValidPassword123       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                | password               | confirmation          |
    | krishna@gmail.com    | ValidPassword123!      | ValidPassword123!      |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                     | password            | confirmation_password  |
    | uniqueuser@example.com    | validpassword123    | validpassword123       |
@valid-registration
Scenario Outline: User Registration Process
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email               | password            | confirmation_password  |
    | krishna@gmail.com   | ValidPassword123    | ValidPassword123       |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Format
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                 | password               | confirmation          |
    | krishna@gmail.com     | ValidPassword123!      | ValidPassword123!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And the user clicks the Register button
  Then the user should see a success message 
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password             | confirmation_password   |
    | uniqueuser@example.com    | validpassword123     | validpassword123        |
@unique-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password              | confirmation_password   |
    | krishna@gmail.com    | ValidPassword123!     | ValidPassword123!       |
@password_mismatch
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the Register button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email              | password            | confirmation_password   |
    | krishna@gmail.com  | ValidPassword123    | DifferentPassword456     |
@lowercase-email-registration
Scenario Outline: Validate Email Registration with Lowercase Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email               | password            | confirmation       |
    | krishna@gmail.com   | ValidPassword123    | ValidPassword123    |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in with the created account

  Examples:
    | email                   | password               | confirmation          |
    | user+test@gmail.com    | ValidPassword123!      | ValidPassword123!      |
@valid-uppercase-email
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password             | confirmation         |
    | KRISHNA@GMAIL.COM  | ValidPassword123     | ValidPassword123      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then a success message appears
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password                |
    | krishna@gmail.com   | StrongPassword123!      |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Address
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email              | password            |
    | user123@gmail.com  | ValidPassword123    |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password            | confirmation         |
    | user.name@example.com     | SecurePassword123    | SecurePassword123     |
@valid_email_registration
Scenario Outline: User Registration Process with Underscore in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password              | confirmation         |
    | krishna_smith@gmail.com  | ValidPassword123      | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Containing Multiple Dots
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email                 | password            | confirmation        |
    | krishna@gmail.com     | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                     | password            | confirmation         |
    | krishna-hyphen@gmail.com  | ValidPassword123    | ValidPassword123      |
@valid-email-plus-sign
Scenario Outline: Validate that the system accepts an email address containing a plus sign during registration
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I verify a confirmation email is received
  And I log in using the newly created account

  Examples:
    | email                   | password             | confirmation        |
    | krishna+test@gmail.com  | ValidPassword123     | ValidPassword123     |
@valid-email-domain
Scenario Outline: Validate short domain email registration
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user receives a confirmation email
  And the user logs in using "<email>" and "<password>"

  Examples:
    | email        | password           | confirmation        |
    | user@a.com  | ValidPassword123   | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email        | password  | confirmation |
    | a@example.com | Pass123   | Pass123      |
@valid-email_registration
Scenario Outline: User Registration Process for Long Domain Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the account

  Examples:
    | email                    | password            | confirmation        |
    | user@longdomainname.com  | ValidPassword123!   | ValidPassword123!    |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the Register button
  Then I should see a success message
  And I should receive a confirmation email
  And I log in using the newly created account
  
  Examples:
    | email                   | password               | confirmation           |
    | user..name@gmail.com    | ValidPassword123!     | ValidPassword123!      |
@valid-numeric-domain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message is displayed
  And a confirmation email is received in the inbox
  And the user logs in with the new account

  Examples:
    | email                    | password            | confirmation        |
    | user123@123domain.com   | SecurePassword123   | SecurePassword123    |
@valid-email-registration
Scenario Outline: User Registration Process with Long Username Email
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                       | password             | confirmation         |
    | longusername@example.com    | ValidPassword123!    | ValidPassword123!     |
@valid-registration-short-username
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email      | password            | confirmation         |
    | a@b.com    | ValidPassword123    | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                 | password             | confirmation          |
    | krishna@gmail.co     | ValidPassword123     | ValidPassword123      |
@valid-email-subdomain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the new account

  Examples:
    | email                    | password            | confirmation         |
    | user@mail.example.com    | ValidPassword123    | ValidPassword123      |
@valid-email-registration
Scenario Outline: Validate email registration with generic top-level domain
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email           | password             | confirmation_password |
    | user@example    | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter the password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the account

  Examples:
    | email              | password             | confirmation         |
    | user123@gmail.com  | ValidPassword123     | ValidPassword123      |
@valid-email-trimming
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation_password>" in the confirmation field
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the account

  Examples:
    | email                   | password            | confirmation_password  |
    | " krishna@gmail.com "   | validPassword123    | validPassword123       |
@valid-email-registration
Scenario Outline: Validate Email Address with Special Characters
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then I should see a success message
  And I verify that a confirmation email is received in the inbox
  And I log in using the newly created account

  Examples:
    | email                  | password              | confirmation_password   |
    | user!name@gmail.com   | ValidPassword123      | ValidPassword123        |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password             | confirmation        |
    | user!@example.com   | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: Validate Email Registration with Mixed Case Username
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                  | password               | confirmation           |
    | KrIsHnA@gmail.com     | ValidPassword123!      | ValidPassword123!      |
@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then an error message should be displayed indicating invalid email format
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password             | confirmation         |
    | abc@    | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process with Special Characters in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  When the user logs in with "<email>" and "<password>"
  Then the user should be successfully logged in

  Examples:
    | email              | password            | confirmation        |
    | !@example.com      | ValidPassword123    | ValidPassword123     |
@duplicate-email-registration
Scenario Outline: Verify Duplicate Email Registration
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email                  | password            | confirmation        |
    | krishna@gmail.com      | ValidPassword123    | ValidPassword123     |
@empty-email
Scenario Outline: User Registration Process with Empty Email
  Given the user is on the Registration Page
  When the email field is left empty
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the email field is required
  And the account is not created
  And the user remains on the registration page

  Examples:
    | password           | confirmation       |
    | ValidPassword123   | ValidPassword123    |
@mixed-special-characters-email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password               | confirmation          |
    | user!name@domain.com     | ValidPassword123!      | ValidPassword123!      |
@empty_password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I leave the password field empty
  And I enter "<confirmation_password>"
  And I click the Register button
  Then an error message should appear indicating the password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email                | confirmation_password |
    | krishna@gmail.com    | krishna@gmail.com     |
@empty_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I leave the confirmation password field empty
  And I click the "Register" button
  Then an error message should appear indicating the confirmation password field is required
  And the account is not created
  And the user remains on the Registration Page

  Examples:
    | email              | password           |
    | krishna@gmail.com  | ValidPassword123   |
@short_password
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a password "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then an error message should appear indicating the password does not meet the minimum length requirement
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | short    | short        |
@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the Register button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password            | confirmation_password   |
    | krishna@gmail.com  | ValidPassword123    | DifferentPassword456     |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then an error message should be displayed indicating the password does not meet complexity requirements
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | 12345    | 12345        |
@invalid-email-registration
Scenario Outline: User Registration with Invalid Email Address
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should be displayed indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password              | confirmation          |
    | abc@@example.com  | ValidPassword123!     | ValidPassword123!      |
@invalid-email-domain
Scenario Outline: User Registration with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password              | confirmation         |
    | abc@    | ValidPassword123      | ValidPassword123     |
@invalid-email-format
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating spaces are not allowed in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password             | confirmation        |
    | abc @gmail.com    | ValidPassword123     | ValidPassword123     |
@max_length_email_registration
Scenario Outline: User Registration Process with Maximum Length Email
  Given the user is on the Registration Page
  When I enter an email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I verify that a confirmation email is received in the inbox
  And I log in using the newly created account

  Examples:
    | email                                | password             | confirmation         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |
@invalid-email
Scenario Outline: User Registration with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password            | confirmation        |
    | abc@      | ValidPassword123!   | ValidPassword123!    |
@concurrent_registration
Scenario Outline: User Registration Process
  Given the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password with "<confirmation>"
  When the user clicks the Register button in two different browsers simultaneously
  Then the user should see a success message on one screen
  And the user should see an error message on the other screen
  And only one account should be created in the database
  And the user logs in using the newly created account

  Examples:
    | email              | password             | confirmation        |
    | krishna@gmail.com  | ValidPassword123     | ValidPassword123     |
@max_length_password_registration
Scenario Outline: User Registration Process with Maximum Length Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be successfully logged in

  Examples:
    | email               | password                        | confirmation                    |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa  |
@max-special-characters
Scenario Outline: User Registration Process with Maximum Special Characters in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                               | password               | confirmation_password      |
    | a!@#$%^&*()_+[]{}|;':,.<>?~        | ValidPassword123!      | ValidPassword123!          |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a password with the maximum number of allowed characters "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password                                                                 | confirmation                                                             |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
