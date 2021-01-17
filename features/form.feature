@forms
Feature: From feature
  #Navigation
  Scenario: Navigate to forms
    Given User is on the landing page
    When User navigates to forms page
    Then User navigates to forms section

  #Tets
  Scenario: Form user completes form
    Given User is in forms page
    When User completes the form with "form user" data
    Then User inspects form results

  Scenario: Main user complete form
    Given User is in forms page
    When User completes the form with "main user" data
    Then User inspects form results



