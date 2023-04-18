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
    #Then I wait for 5 sec OR next line:
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

  @predefined6
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage - Private Search Engine"
    Then I type "Berry" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "(//button[@id='search-btn'])[1]"
    Then I wait for element with xpath "//div[@class='show-results']" to be present
    And I should see page title contains "Search Results"
    And element with xpath "//div[@class='show-results']" should contain text "Berry"

  @predefined7
  Scenario: Predefined steps for Yandex
    Given I open url "https://www.yandex.com/"
    Then I should see page title as "Yandex"
    Then I type "Orange" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//button[@role='button']"
    Then I wait for element with xpath "//div[@class='content i-bem']" to be present
    And I should see page title contains "— Yandex"
    And element with xpath "//div[@class='content i-bem']" should contain text "Orange"

  @predefined8
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then I type "Pasta" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I should see page title contains "- Ecosia"
    And element with xpath "//section[@class='mainline web__mainline']" should contain text "Pasta"

  @predefined9
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com"
    Then I should see page title contains "Wiki"
    Then I type "Cheese" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@value='more:Show_encyclopedias_only']"
    Then element with xpath "//input[@value='more:Show_encyclopedias_only']" should be selected
    Then I click on element using JavaScript with xpath "//input[@name='btnG']"
    And I click on element using JavaScript with xpath "//button[@id='proceed-button']"
    Then I should see page title contains "Wiki"
    Then I switch to iframe with xpath "//body/div[@id='results_009420061493499222400:e8sof1xaq-u']/iframe[1]"
    And element with xpath "//div[@id='inner-sbox']" should contain text "Cheese"

  @predefined10
  Scenario: Predefined steps for Givewater
    Given I open url "https://www.givewater.com"
    Then I should see page title contains "giveWater"
    Then I type "Water" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then I should see page title contains "GiveWater"
    And element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Water"

  @predefined11
  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org"
    Then I should see page title contains "Ekoru"
    Then I type "Sun" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//button[@onclick='search()']"
    And I wait for 4 sec
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    And I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should have attribute "value" as "Sun"
    And element with xpath "//div[@id='div_results']" should contain text "Sun"