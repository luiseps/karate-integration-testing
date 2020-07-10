Feature: Check returned countries by name

  Background:
    * url 'https://restcountries.eu'
    * header Accept = 'Application/json'

  Scenario: get Colombia info
    Given path '/rest/v2/alpha/co'
    When method get
    Then status 200

  Scenario: Testing the exact response of a GET endpoint
    Given path '/rest/v2/alpha/co'
    When method GET
    Then status 200
    And match $ == {"name":"Colombia","topLevelDomain":[".co"],"alpha2Code":"CO","alpha3Code":"COL","callingCodes":["57"],"capital":"Bogotá","altSpellings":["CO","Republic of Colombia","República de Colombia"],"region":"Americas","subregion":"South America","population":48759958,"latlng":[4.0,-72.0],"demonym":"Colombian","area":1141748.0,"gini":55.9,"timezones":["UTC-05:00"],"borders":["BRA","ECU","PAN","PER","VEN"],"nativeName":"Colombia","numericCode":"170","currencies":[{"code":"COP","name":"Colombian peso","symbol":"$"}],"languages":[{"iso639_1":"es","iso639_2":"spa","name":"Spanish","nativeName":"Español"}],"translations":{"de":"Kolumbien","es":"Colombia","fr":"Colombie","ja":"コロンビア","it":"Colombia","br":"Colômbia","pt":"Colômbia","nl":"Colombia","hr":"Kolumbija","fa":"کلمبیا"},"flag":"https://restcountries.eu/data/col.svg","regionalBlocs":[{"acronym":"PA","name":"Pacific Alliance","otherAcronyms":[],"otherNames":["Alianza del Pacífico"]},{"acronym":"USAN","name":"Union of South American Nations","otherAcronyms":["UNASUR","UNASUL","UZAN"],"otherNames":["Unión de Naciones Suramericanas","União de Nações Sul-Americanas","Unie van Zuid-Amerikaanse Naties","South American Union"]}],"cioc":"COL"}


  Scenario: Testing that GET response contains specific field
    Given path '/rest/v2/alpha/co'
    When method get
    Then status 200
    And match $ contains {"name":"Colombia"}

  Scenario: Testing a POST endpoint with request body
    Given path '/rest/v2/alpha/co'
    When method get
    Then status 200
    And match $ contains {"alpha2Code":"#notnull"}
