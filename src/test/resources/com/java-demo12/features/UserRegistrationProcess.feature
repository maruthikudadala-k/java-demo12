Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then an error message appears, indicating password mismatch
  And the account is not created
  And the user remains on the registration page

  Examples:
    | email              | password            | confirmation_password   |
    | krishna@gmail.com  | ValidPassword123    | DifferentPassword456     |

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
  Then a success message appears on the screen
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email              | password            |
    | krishna@gmail.com  | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@unique-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email               | password              | confirmation_password   |
    | krishna@gmail.com   | ValidPassword123!     | ValidPassword123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the Register button
  Then I should see a success message on the screen
  And I should receive a confirmation email in the inbox
  And I log in using the newly created account

  Examples:
    | email                     | password              | confirmation_password   |
    | uniqueuser@example.com    | validpassword123      | validpassword123        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And the user clicks the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password              |
    | krishna@gmail.com   | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-lowercase-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field with "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                | password             | confirmation         |
    | krishna@gmail.com    | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Valid Special Characters
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                   | password               | confirmation          |
    | user+test@gmail.com    | ValidPassword123!      | ValidPassword123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the "<email>"

  Examples:
    | email               | password            | confirmation        |
    | user123@gmail.com  | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@uppercase-email-registration
Scenario Outline: User Registration Process with Uppercase Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                 | password             | confirmation         |
    | KRISHNA@GMAIL.COM    | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Address
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user should log in with the account using "<email>" and "<password>"

  Examples:
    | email                     | password              | confirmation         |
    | user.name@example.com     | SecurePassword123     | SecurePassword123     |

Feature: UserRegistrationProcess

Background: User is on the registration page
Given the user is on the registration page

@valid_email_registration
Scenario Outline: User Registration with Email Containing Underscores
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message indicating account creation should appear
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                      | password             | confirmation        |
    | krishna_smith@gmail.com    | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration with Email Containing Hyphens
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                       | password            | confirmation       |
    | krishna-hyphen@gmail.com    | ValidPassword123    | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password               |
    | krishna@gmail.com    | StrongPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-signup
Scenario Outline: User Registration Process with Plus Sign in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the new account

  Examples:
    | email                    | password              | confirmation          |
    | krishna+test@gmail.com   | ValidPassword123      | ValidPassword123      |

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
  And the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email                   | password               | confirmation          |
    | user..name@gmail.com   | ValidPassword123!     | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid_registration_single_character_email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with the account

  Examples:
    | email               | password  | confirmation |
    | a@example.com      | Pass123   | Pass123      |
    | b@testmail.com     | Admin321  | Admin321     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Long Domain Name
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the Register button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                     | password              | confirmation          |
    | user@longdomainname.com   | ValidPassword123!    | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Multiple Dots in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password              | confirmation         |
    | krishna@gmail.com      | ValidPassword123      | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the new account

  Examples:
    | email                   | password            | confirmation         |
    | user123@123domain.com  | SecurePassword123   | SecurePassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email            | password            | confirmation_password |
    | user@example     | ValidPassword123    | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm "<confirmation>" in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email        | password              | confirmation         |
    | user@a.com  | ValidPassword123      | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-subdomain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                     | password            | confirmation        |
    | user@mail.example.com    | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
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
    | email                | password             | confirmation         |
    | krishna@gmail.co     | ValidPassword123     | ValidPassword123      |

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
  Then a success message appears on the screen
  And the user should receive a confirmation email in the inbox
  And the user can log in using the account with "<email>"

  Examples:
    | email                     | password               | confirmation          |
    | longusername@example.com  | ValidPassword123!     | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration with Special Characters in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message is displayed
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                  | password              | confirmation         |
    | user!name@gmail.com   | ValidPassword123      | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a valid password "<password>"
  And the user confirms the password "<confirmation_password>"
  And the user clicks the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email      | password           | confirmation_password |
    | a@b.com    | ValidPassword123   | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message appears indicating account creation
  And the user receives a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password            |
    | user123@gmail.com   | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: Validate Mixed Case Email Registration
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using "<email>"

  Examples:
    | email                  | password              | confirmation_password   |
    | KrIsHnA@gmail.com     | ValidPassword123!     | ValidPassword123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email             | password             | confirmation        |
    | user!@example.com | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation_password>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                    | password              | confirmation_password   |
    | "  krishna@gmail.com  "  | validPassword123      | validPassword123         |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email           | password            | confirmation        |
    | !@example.com   | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then a success message should be displayed
  And a confirmation email should be received
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                  | password                | confirmation          |
    | user!name@domain.com  | ValidPassword123!       | ValidPassword123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@existing-email-registration
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password             | confirmation         |
    | krishna@gmail.com   | ValidPassword123     | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email
Scenario Outline: User Registration with Improperly Formatted Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then an error message should be displayed indicating invalid email format
  And the user should remain on the Registration Page

  Examples:
    | email   | password             | confirmation        |
    | abc@    | ValidPassword123     | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty_password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I leave the password field empty
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               |
    | krishna@gmail.com   |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I leave the confirmation password field empty
  And I click the "Register" button
  Then an error message should appear indicating the confirmation password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password             |
    | krishna@gmail.com  | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@short_password_registration
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password does not meet the minimum length requirement
  And the account is not created
  And the user remains on the Registration Page

  Examples:
    | email             | password | confirmation |
    | krishna@gmail.com | short    | short        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration Process with Weak Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then an error message should appear indicating the password does not meet complexity requirements
  And the user should remain on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | 12345    | 12345        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty-email
Scenario Outline: User Registration Process with Empty Email Field
  When the user leaves the email field empty
  And the user enters "<password>" in the password field
  And the user confirms the password with "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating that the email field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | password            | confirmation       |
    | ValidPassword123    | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@password_mismatch
Scenario Outline: User Registration Process with Password Mismatch
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password             | confirmation_password     |
    | krishna@gmail.com   | ValidPassword123     | DifferentPassword456      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password by entering "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating invalid characters in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password              | confirmation          |
    | abc@    | ValidPassword123!     | ValidPassword123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-domain
Scenario Outline: User Registration Process with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password            | confirmation         |
    | abc@    | ValidPassword123    | ValidPassword123     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email
Scenario Outline: User Registration Process with Email Containing Spaces
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email           | password            | confirmation       |
    | abc @gmail.com  | ValidPassword123    | ValidPassword123    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-format
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email            | password              | confirmation        |
    | abc@@example.com | ValidPassword123!     | ValidPassword123!    |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@max-length-email-registration
Scenario Outline: User Registration with Maximum Length Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in with the newly created account

  Examples:
    | email                              | password              | confirmation          |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123!  | ValidPassword123!  |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@max-length-password-registration
Scenario Outline: User Registration Process with Maximum Length Password
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a password at the maximum length limit "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user should log in using the newly created account

  Examples:
    | email               | password          | confirmation       |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                             | password                | confirmation_password      |
    | a!@#$%^&*()_+[]{}|;':,.<>?~      | ValidPassword123!      | ValidPassword123!          |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@concurrent_registration
Scenario Outline: User Registration Process
  Given the user enters a valid email address "<email>"
  And the user enters a valid password "<password>"
  And the user confirms the password "<confirmation>"
  When the user clicks the "Register" button in two different browsers
  Then the user should see a success message in one browser
  And the user should see an error message in the other browser
  And only one account should be created in the database
  And the user logs in using the newly created account

  Examples:
    | email               | password              | confirmation         |
    | krishna@gmail.com   | ValidPassword123      | ValidPassword123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@max-length-password
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And the user should receive a confirmation email
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email             | password                            | confirmation_password                   |
    | krishna@gmail.com | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa     |

