Feature: Create ProductWrapper
  Scenario: Add a valid Attribute
    Given The user is on Create ProductWrapper page
    When The user submit valid Attribute "Text"
    And The user press "Add Attribute" button
    Then The Attribute "Text" should be added in queue

  Scenario: Add an invalid Attribute
    Given The user is on Create ProductWrapper page
    When The user submit an invalid Attribute "Text"
    And The user press "Add Attribute" button
    Then The message "Invalid information, couldn´t be added" should display
    And the invalid field should be highlighted

  Scenario: Cancel Add an Attribute
    Given The user is on Create ProductWrapper page
    When The user submit an Attribute "Anything"
    And The user press "Cancel" button
    Then The field information should be blank

  Scenario: Delete one attribute in list
    Given The user is on Create ProductWrapper page
    And The attribute "Anything" is first in the list
    When The user press "Delete Attribute" of "Anything" attribute
    Then The attribute "Text" should be deleted
    And The message "Attribute deleted succesfully" should display

  Scenario: Delete attribute list
    Given The user is on Create ProductWrapper page
    And The attribute "Anything" is first in the list
    And The attribute "Something" is second in the list
    When The user press "Delete items"
    Then The should be empty
    And The message "List deleted succesfully" should display

  Scenario: Move an attribute in the list
    Given The user is on Create ProductWrapper page
    And The attribute "Anything" is first in the list
    And The attribute "Something" is second in the list
    When The user drag and drop the attribute "Something" in the first position
    Then The attribute "Something" should be first
    And The attribute "Anything" should be second

  Scenario: Create ProductWrapper
    Given The user is on Create ProductWrapper page
    When The user press "Save ProductWrapper" button
    Then The message "ProductWrapper $id was saved correctly" should display

  Scenario: Failed create ProductWrapper
    Given The user is on Create ProductWrapper page
    When The user press "Save ProductWrapper" button
    And There was an error
    Then The message "ProductWrapper $id failed to save" should display