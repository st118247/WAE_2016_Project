Feature: Register
  In order to allow users to use the system
  Admin have to register for users.

  Scenario: User registration

    Admin should be able to add user to the system.

    Given My role is Admin
    And I am a admin
    And I have a new staff
    And I want to add the staff

#    When I visit the Homepage of the Accommodation System
#    Then I should see a link for sign in
#    When I click the link for sign in
#    Then I see a form to fill in my account
#    When I submit the form
#    Then I am redirected to the start page
#    And I should see my signed in and a link to sign out