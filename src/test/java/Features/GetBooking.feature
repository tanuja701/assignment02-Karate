Feature:Read A Restful Booker For HerokuApp

  Background: url service
    * url 'https://restful-booker.herokuapp.com/'

  Scenario: Read Restful Booker HerokuApp
    Given path 'booking'
    When method GET
    Then status 200
    And print 'getResponse: ', response