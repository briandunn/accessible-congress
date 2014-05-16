Feature: voting record by zip

  Scenario:
    Given I am on the home page
    When I enter my zip code
    Then I see the voting record of my congressman
