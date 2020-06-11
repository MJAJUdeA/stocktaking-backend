Feature: Create ProductWrapper
  Scenario: Add a valid Attribute
    Given The user is on Create ProductWrapper page
    When The user submit valid Attribute "Text"
    And The user press "Add Attribute" button
    Then The Attribute "Text" should be added in queue

  Scenario: Add a invalid Attribute
    Given The user is on Create ProductWrapper page
    When The user submit invalid Attribute "Text"
    And The user press "Add Attribute" button
    Then The message "Invalid information, couldn´t be added" should display
    And the invalid field should be highlighted

  Scenario: Cancel Add a Attribute
    Given The user is on Create ProductWrapper page
    When The user submit Attribute "Text"
    And The user press "Cancel" button
    Then Delete field information

  Scenario: Create ProductWrapper
    Given The user is on Create ProductWrapper page
    When The user press "Save ProductWrapper" button
    Then the message "ProductWrapper $id was saved correctly" should display



