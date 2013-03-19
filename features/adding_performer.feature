Feature: Adding performer 

  Scenario: Not signed in trying to add performer
    Given a user visits the add performer page
    Then he should see the sign in page

  Scenario: Unsuccessful performer submission
    Given a user visits the add performer page
      And the user has an account 
      And the user is signed in
    When he submits invalid performer information
    Then he should see an error message

  Scenario: Successful performer submission
    Given a user visits the add performer page
      And the user has an account
      And the user is signed in
    When the user submits valid performer information
    Then he should see the performer page
      And he should see an edit link
