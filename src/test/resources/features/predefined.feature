# Search Engine exercise
# Related to task ASK0323-173
# Author: Anna Meshkov

@predefined
Feature: Search Engine scenarios
  @predefined1
    @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    Then I wait for 5 sec OR next line:
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    And element with xpath "//*[@id='res']" should contain text "Cucumber"
