Feature: Check returned countries by API

  Background:
    * url 'https://restcountries.eu'
    * header Accept = 'Application/json'
  Scenario: get list of all countries
    Given path '/rest/v2/all'
    When method get
    Then status 200