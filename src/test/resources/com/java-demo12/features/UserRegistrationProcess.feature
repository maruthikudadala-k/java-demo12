Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  When I navigate to the registration URL
  And I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password             | confirmPassword       |
    | valid_user@example.com    | ValidPass456!       | ValidPass456!         |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration URL "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be redirected to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                      | password                   | confirmPassword             |
    | unique_user@example.com    | AnotherSecurePass123!      | AnotherSecurePass123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@empty_email
Scenario Outline: User Registration Without Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Email is required"

  Examples:
    | email | password       | confirmPassword  |
    |       | Password123!   | Password123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

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
    | email                     | password              | confirmPassword         |
    | test_user@example.com     | SecurePass123!       | SecurePass123!          |
    | invalid-email              | ValidPass123!        | ValidPass123!           |
    |                           | ValidPass123!        | ValidPass123!           |
    | test_user@example.com     |                       |                          |
    | test_user@example.com     | short                 | short                   |
    | test_user@example.com     | SecurePass123!       | DifferentPass456!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@verify_confirmation_email_sent
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked with no errors
  And the confirmation email should be logged as sent to "<email>"

  Examples:
    | email                    | password        | confirmPassword   |
    | test_email@example.com   | Password123!    | Password123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-format
Scenario Outline: User Registration with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message element should be displayed
  And the error message text should equal "Please enter a valid email address"

  Examples:
    | email           | password            | confirmPassword   |
    | invalid-email   | ValidPass123!      | ValidPass123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@no_password_error
Scenario Outline: User Registration Process with Missing Password
  When I enter email "<email>" in the email field
  And I enter password "<password>" in the password field
  And I enter password "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed
  And the error message text should equal "Password is required"

  Examples:
    | email                     | password | confirmPassword |
    | test_user@example.com     |          |                 |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@duplicate-email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message element is displayed
  And the error message text equals "Email already exists"

  Examples:
    | email                      | password           | confirmPassword       |
    | existing_user@example.com  | ValidPass123!      | ValidPass123!         |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@password-mismatch
Scenario Outline: User Registration Process with Mismatched Passwords
  Given the user navigates to the registration URL "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the Register button should be clicked
  Then the error message should display "Passwords do not match"

  Examples:
    | email                   | password        | confirmPassword         |
    | test_user@example.com   | Password123!    | DifferentPassword456!   |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@short-password-error
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the Register button is clicked
  And the error message text should equal "Password must be at least 8 characters"

  Examples:
    | email                     | password | confirmPassword |
    | test_user@example.com     | short    | short           |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should display "Password must contain at least one special character"

  Examples:
    | email                    | password             | confirmPassword       |
    | test_user@example.com    | NoSpecialChar123     | NoSpecialChar123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@duplicate-email
Scenario Outline: User Registration with Already Registered Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Email already exists"

  Examples:
    | email                       | password          | confirmPassword      |
    | existing_user@example.com   | ValidPass123!    | ValidPass123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I wait for the error message to appear
  And I assert the error message is displayed
  Then I assert the error message text equals "Please enter a valid email address"

  Examples:
    | email          | password           | confirmPassword     |
    | invalid-email  | ValidPass123!      | ValidPass123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should show "Password must contain at least one number"

  Examples:
    | email                     | password            | confirmPassword      |
    | test_user@example.com     | NoNumbersHere!      | NoNumbersHere!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-passwords
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Passwords do not match"

  Examples:
    | email                    | password        | confirmPassword           |
    | test_user@example.com    | Password123!    | DifferentPassword456!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@error_no_password
Scenario Outline: User attempts Registration without Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed
  And the error message text should equal "Password is required"

  Examples:
    | email                      | password | confirmPassword |
    | test_user@example.com     |          |                 |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@short-password-error
Scenario Outline: User Registration Process with Short Password
  Given the user navigates to the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text should equal "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text equals "Password must contain at least one special character"

  Examples:
    | email                   | password            | confirmPassword      |
    | test_user@example.com   | NoSpecialChar123    | NoSpecialChar123      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@missing-email
Scenario Outline: User Registration Process with Missing Email
  Given the user navigates to the registration URL
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message element displayed
  And the error message text should equal "Email is required"

  Examples:
    | email | password        | confirmPassword  |
    |       | Password123!    | Password123!     |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@max-length-email-registration
Scenario Outline: User Registration Process with Maximum Length Email
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
    | email                                                       | password          | confirmPassword    |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123!    | SecurePass123!    |

Feature: UserRegistrationProcess

Background: User is on the registration page
Given the user is on the registration page

@valid-registration
Scenario Outline: User Registration Process
  When the user navigates to the registration URL "https://app.example.com/register"
  And the user enters email "<email>" in the email field
  And the user enters password "<password>" in the password field
  And the user enters password "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be redirected to a URL containing "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked without errors
  And the confirmation message should be displayed

  Examples:
    | email                  | password   | confirmPassword |
    | test_user@example.com  | P@ssw0rd   | P@ssw0rd        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be directed to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                     | password           | confirmPassword      |
    | test123_user@example.com  | SecurePass123!     | SecurePass123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

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
  And the confirm password field should match the password
  And the Register button should be clicked with no errors
  And the confirmation message should be displayed

  Examples:
    | email                     | password          | confirmPassword     |
    | test_user+tag@example.com | SecurePass123!    | SecurePass123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the register button is clicked
  Then the error message text should equal "Password must contain at least one number"

  Examples:
    | email                   | password          | confirmPassword     |
    | test_user@example.com   | NoNumbersHere!    | NoNumbersHere!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see a confirmation message

  Examples:
    | email                     | password             | confirmPassword       |
    | test_user@example.com     | SecurePass123!       | SecurePass123!        |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be directed to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password          | confirmPassword     |
    | test.user@example.com   | SecurePass123!    | SecurePass123!      |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password            | confirmPassword      |
    | Test_User@example.com     | SecurePass123!      | SecurePass123!       |

Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be directed to a confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And a confirmation message should be displayed

  Examples:
    | email                   | password           | confirmPassword      |
    | test-user@example.com   | SecurePass123!     | SecurePass123!       |

