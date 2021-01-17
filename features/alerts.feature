@alerts
Feature: Alerts, Frames & Windows Feature

  #Navigation
  Scenario Outline: Navigate to alerts pages
    Given User is on the landing page
    When User navigates to alerts page
    Then User navigates to alerts "<page>" section
    Examples:
      |page|
      | browser windows  |
      | alerts |
      | frames |
      | nested frames   |
      | modal dialogs     |

  #modal dialogs
  Scenario: Open and close small modal
    Given User is in modal dialogs
    When User opens small modal
    Then User closes small modal

  Scenario: Open and close large modal
    Given User is in modal dialogs
    When User opens large modal
    Then User closes large modal

  #alerts
  Scenario: Alerts - basic alert
    Given User is in alerts
    When User clicks on "basic alert"
    Then User click ok on alert

  Scenario: Alerts - timer alert
    Given User is in alerts
    When User clicks on "timer alert"
    Then User click ok on alert

  Scenario: Alerts - confirm alert (positive)
    Given User is in alerts
    When User clicks on "confirm alert"
    And User confirms alert
    Then User inspects given alert result message

  Scenario: Alerts - confirm alert (negative)
    Given User is in alerts
    When User clicks on "confirm alert"
    And User cancels alert
    Then User inspects given alert result message

  Scenario: Alerts - prompt box
    Given User is in alerts
    When User clicks on "prompt alert"
    And User enters name in alert
    Then User inspects given alert result message

    #browser windows
  Scenario: Opening new tab
    Given User is in browser windows
    When User opens new tab
    Then User sees new tab

  Scenario: Opening new window
    Given User is in browser windows
    When User opens new window
    Then User sees new tab

  Scenario: Opening new windows message tab
    Given User is in browser windows
    When User opens new window message tab
    Then User sees new windows message tab

