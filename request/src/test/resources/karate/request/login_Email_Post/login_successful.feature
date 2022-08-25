Feature: Service client POST
  As QA Automation
  I want to login a client with email
  To validate the status code and response

  Background: consume service
    * url urlLogin

  Scenario: Check the service POST method
    * def requestCreate = {"email": '#(emailLogin)',"password": '#(passwordLogin)'}
    
    Given path 'login'
    And request requestCreate
    When method POST
    Then status 200