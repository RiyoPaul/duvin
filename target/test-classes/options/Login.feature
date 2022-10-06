Feature: Verifying adactin login details

  Scenario Outline: Verifying adactin login
    Given User is on the adactin page
    When User should login "<userName>","<password>"
    And User should enter phoneno
    And User should enter prize 
    And User should enter 
    Then User should verify after login success msg as "Hello Greens!"

    Examples: 
      | userName | password |
      | riyo234  | Riyo1234 |
