@widgets
Feature: Widgets Feature

  #Navigation
  Scenario Outline: Navigate to widget pages
    Given User is on the landing page
    When User navigates to widgets page
    Then User navigates to widget "<page>" section
    Examples:
      |page|
      | accordian |
      | auto complete |
      | date picker |
      | slider   |
      | progress bar   |
      | tabs |
      | tool tips |
      | menu |
      | select menu |

  #date picker
  Scenario: Pick a date
    Given User is on the landing page
    And User navigates to widgets page
    And User navigates to widget "date picker" section
    When User selects date "11/01/2010"
    Then User checks if the date is correct

  Scenario: Pick a date and time
    Given User is on the landing page
    And User navigates to widgets page
    And User navigates to widget "date picker" section
    When User selects date and time "January 11,2010 4:20 PM"
    Then User checks if the date and time is correct

    #tool tips
  Scenario: Input tool tip hover
    Given User is on the landing page
    And User navigates to widgets page
    When User navigates to widget "tool tips" section
    Then User hovers on tool tip input box

  Scenario: Button tool tip hover
    Given User is on the landing page
    And User navigates to widgets page
    When User navigates to widget "tool tips" section
    Then User hovers on tool tip button

  Scenario: Text tool tip hover
    Given User is on the landing page
    And User navigates to widgets page
    When User navigates to widget "tool tips" section
    Then User hovers on tool tip text

    #select menu
  Scenario Outline: Select menu test
    Given User is on the landing page
    And User navigates to widgets page
    When User navigates to widget "select menu" section
    Then User select "<color>" from "Old Style Select Menu"
    Examples:
    |color|
    |Red  |
    |Blue |
    |Green|
    |Yellow|
    |Purple|
    |Black |
    |White |
    |Violet|
    |Indigo|
    |Magenta|
    |Aqua   |

    #progress bar
  Scenario: Progress Bar
    Given User is on the landing page
    And User navigates to widgets page
    And User navigates to widget "progress bar" section
    When User starts progress

    #slider
  Scenario: Slider
    Given User is on the landing page
    And User navigates to widgets page
    And User navigates to widget "slider" section
    #Then User slides the value to "50"

