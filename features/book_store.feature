@books
Feature: Book Store Feature
  #Navigation
  Scenario Outline: Navigate to elements page
    Given User is on the landing page
    When User navigates to books page
    Then User navigates to books "<page>" section
    Examples:
      |page              |
      | login            |
      | book store       |
      | profile          |
      | book store api   |

  Scenario: Register a new user
    Given User is in book login page
    When User creates a new user
    And User logs in

  Scenario: Login
    Given User is in book login page
    And User logs in

  @book_clean
  Scenario: Add a book to profile pilot test
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User adds book "Speaking JavaScript" to profile
    Then User navigates to books "profile" section
    And User checks if "Speaking JavaScript" is "visible"

  @book_clean
  Scenario: Add multiple books to profile
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User adds book "Speaking JavaScript" to profile
    And User adds book "You Don't Know JS" to profile
    Then User navigates to books "profile" section
    And User checks if "Speaking JavaScript" is "visible"
    And User checks if "You Don't Know JS" is "visible"

  @book_clean
  Scenario Outline: Add a book to profile
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User adds book "<book>" to profile
    Then User navigates to books "profile" section
    And User checks if "<book>" is "visible"
    Examples:
    |book|
    | Git Pocket Guide  |
    | Learning JavaScript Design Patterns |
    | Designing Evolvable Web APIs with ASP.NET |
    | Speaking JavaScript                       |
    | You Don't Know JS                         |
    | Programming JavaScript Applications       |
    | Eloquent JavaScript, Second Edition       |
    | Understanding ECMAScript 6                 |

  @book_clean
  Scenario: Add a book and check book image in profile
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User adds book "Git Pocket Guide" to profile
    Then User navigates to books "profile" section
    And User inspects "Git Pocket Guide" image

  Scenario: Search for a book (positive)
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User searches for book "Git Pocket Guide"
    Then User inspects "Git Pocket Guide" image

  Scenario: Search for a book (failed)
    Given User is in book login page
    And User logs in
    When User navigates to books "book store" section
    And User searches for book "Learning JavaScript Design Patterns"
    Then User inspects "Learning JavaScript Design Patterns" image