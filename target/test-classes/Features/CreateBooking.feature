Feature:Create A Restful Booker For HerokuApp

  Background: url service
    * url 'https://restful-booker.herokuapp.com/'
    * def authToken = call read('classpath:Features/token/createToken.feature@CreateToken')

  @Create
  Scenario: Create Restful Booker HerokuApp
    Given path 'booking'
    Given header Accept = 'application/json'
    And request read ('{"firstname" : "Jim","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01""checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}')
    When method POST
    Then status 200
