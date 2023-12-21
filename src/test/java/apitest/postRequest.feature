Feature: Post Test

  Background:
    Given url baseURL
    And print "======= This is Post Test ======="


  @post @test
  Scenario:  Create User
    * def body = {"id": 10,"username": "lisa","firstName": "Lisa","lastName": "R","email": "lisar@gmail.com","password": "abc","phone": "082282","userStatus": 0}
    * def headerRegress = { Accept: 'application/json'}
    When path "/user"
    And headers headerRegress
    And request body
    And method post
    Then status 200
    And print response


