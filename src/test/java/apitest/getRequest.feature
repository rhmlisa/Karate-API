Feature: Get Test

  Background: Setup Data
    Given url baseURL
    And print "======= This is Get Test ======="
    # define location schema
    * string jsonSchemaExpected = read('file:src/test/java/apitest/schema/getschema.json')

    # Get list user and assert status
  Scenario: Get User by Username
    When path '/user/lisa'
    And method get
    Then status 200
    And print response

