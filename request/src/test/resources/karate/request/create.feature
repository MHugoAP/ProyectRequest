Feature: Service client POST
  As QA Automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def requestCreate = {"name": '#(name)', "job": '#(job)'}

    Given path 'users'
    * request requestCreate
    When method post
    Then status 201