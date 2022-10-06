Feature: Verifying adactin login details

  Scenario Outline: Verifying adactin login with valid credentials
    Given User is on adactin page
    When User should enter "<userName>","<password>"
    And User should click login button
    And User should search hotels "<location>","<hotels>","<roomType>","<noOfRooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childrensPerRoom>"
    And User should click search button
    And User should select hotel and click continue
    And User should bookhotel "<firstName>","<lastName>","<address>","<cardNo>","<cardType>","<expiryM>","<expiryY>","<cvv>"
    Then User should print the orderId

    Examples: 
      | userName | password | location | hotels         | roomType | noOfRooms | checkInDate | checkOutDate | adultsPerRoom | childrensPerRoom | firstName | lastName  | address | cardNo           | cardType | expiryM | expiryY | cvv |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
      | riyo1234 | Riyo1234 | Sydney   | Hotel Sunshine | Standard | 1-One     | 30/09/2022  | 01/10/2022   | 2-Two         | 2-Two            | Riyo      | Paulduvin | Chennai | 4563783764747982 | Visa     | January |    2022 | 534 |
