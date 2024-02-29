Feature:Update A Restful Booker For HerokuApp

  Background: url service
    * url 'https://restful-booker.herokuapp.com/'
    * def authToken = call read('classpath:features/token/createToken.feature@CreateToken')

  Scenario: Update Restful Booker HerokuApp
    Given path 'booking/1303'
    * header Accept = 'application/json'
    * header Cookie = 'token=' + authToken.Token
    And print authToken.accessToken
    And request read ('{"firstname" : "James","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01""checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}')
    When method PUT
    Then status 200
    * def UpdateResponse = response
    And match response.[*].firstname == "#present", "#string", "#notnull"
    And match response.[*].lastname == "#present", "#string", "#notnull"
    And print 'UpdateResponse: ', response