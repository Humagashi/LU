@elements
Feature: Elements feature
   #Navigation
  Scenario Outline: Navigate to elements page
    Given User is on the landing page
    When User navigates to elements page
    Then User navigates to elements "<page>" section
    Examples:
    |page|
    | text box  |
    | check box |
    | radio button |
    | web tables   |
    | buttons      |
    | links        |
    |broken        |
    |upload        |
    |dynamic       |

    #text box scenarios
  Scenario: Complete text box
    Given User is in elements text box page
    When User completes the text box
    Then User checks if text box output is correct

    #radio section scenarios
  Scenario: Radio button - yes
    Given User is in elements radio button page
    When User clicks on "Yes" radio button

  Scenario: Radio button - impressive
    Given User is in elements radio button page
    When User clicks on "Impressive" radio button

  Scenario: Radio button - no
    Given User is in elements radio button page
    When User clicks on "No" radio button

  Scenario: Radio button changing value
    Given User is in elements radio button page
    When User clicks on "Yes" radio button
    Then User clicks on "Impressive" radio button

    #button section scenarios
  Scenario: Buttons page double click
    Given User is in elements button page
    When User clicks "double click" button
    Then User checks if button message is correct

  Scenario: Buttons page right click
    Given User is in elements button page
    When User clicks "right click" button
    Then User checks if button message is correct

  Scenario: Buttons page dynamic click
    Given User is in elements button page
    When User clicks "click me" button
    Then User checks if button message is correct

  Scenario: Multiple buttons clicks
    Given User is in elements button page
    When User clicks "click me" button
    And User checks if button message is correct
    And User clicks "right click" button
    And User checks if button message is correct
    And User clicks "double click" button
    Then User checks if button message is correct

  #checkbox
  Scenario Outline: Check box folder test
    Given User is on the landing page
    And User navigates to elements page
    And User navigates to elements "check box" section
    When User user selects "<folder>"
    Examples:
    |folder |
    | office |
    | downloads |
    | workspace |
    | documents |
    | desktop   |
    | home      |

  #web tables
  Scenario: Add web tables user
    Given User is on the landing page
    And User navigates to elements page
    When User navigates to elements "web tables" section
    Then User checks if client "Cierra" is "visible"

  Scenario: Add web tables user
    Given User is on the landing page
    And User navigates to elements page
    And User navigates to elements "web tables" section
    When User adds new client
    Then User checks if client "Markuss" is "visible"

  Scenario: Delete web table user
    Given User is on the landing page
    And User navigates to elements page
    And User navigates to elements "web tables" section
    When User deletes client "Cierra"
    Then User checks if client "Cierra" is "not visible"

  Scenario: Add and delete web table user
    Given User is on the landing page
    And User navigates to elements page
    And User navigates to elements "web tables" section
    When User adds new client
    And User checks if client "Markuss" is "visible"
    And User deletes client "Markuss"
    Then User checks if client "Markuss" is "not visible"

    #upload images
  Scenario: Upload image
    Given User is on the landing page
    And User navigates to elements page
    And User navigates to elements "upload" section
    When User uploads a file




