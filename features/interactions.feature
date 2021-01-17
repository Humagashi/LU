@interactions
Feature: Interactions feature

  #Navigation
  Scenario Outline: Navigate to interactions pages
    Given User is on the landing page
    When User navigates to interactions page
    Then User navigates to interactions "<page>" section
    Examples:
      |page|
      | sortable |
      | selectable |
      | resizable |
      | droppable   |
      | dragabble   |
