# Search Engine exercise
# Related to task ASK0323-173
# Author: Anna Meshkov

@predefined
Feature: Search Engine scenarios

  @predefined1
    #@regression
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

  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com"
    Then I should see page title contains "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Tomato" into element with xpath "//input[@id='q']"
    And I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    And I should see page title contains "- Result"
    Then element with xpath "//div[@id='web-results']" should contain text "Tomato"

  @predefined3
  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='searchbox_input']" should be present
    Then I type "Avocado" into element with xpath "//input[@id='searchbox_input']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I should see page title contains "at DuckDuckGo"
    And element with xpath "//div[@id='links_wrapper']" should contain text "Avocado"

  @predefined4
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "anonymous search engine Swisscows"
    Then element with xpath "//input[@name='query']" should be present
    Then I type "Olive oil" into element with xpath "//input[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then I should see page title contains "in Web search - Swisscows"
    And element with xpath "//div[@class='web-results']" should contain text "Olive oil"

  @predefined5
  Scenario: Predefined steps for Search Encrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Apple" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I should see page title contains "Search Encrypt"
    And element with xpath "//section[@class='serp__results container']" should contain text "Apple"
