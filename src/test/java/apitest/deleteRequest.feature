Feature: Delete Test

  Background: Preparation
    Given url baseURL
    And print "This is Delete step preparation"

  @test
  Scenario: Delete User
    When path '/user/lisa'
    And method delete
    Then status 200
    And print response