Feature: Shops

  Background: 
    Given that we have at least ten shops in the database

  Scenario: a visitor sees the first 10 shops on the homepage
    When the user visits the homepage
    Then he should see the first ten shops on the page