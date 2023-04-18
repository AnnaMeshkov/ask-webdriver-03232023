# Test automation for Quote application
# https://skryabin.com/market/quote.html
# Author: Anna Meshkov

  @quote
  Feature: Quote Test Scenarios
    @quote1
    Scenario: Validate Location Address
      # validate location with different window sizes/example of responsive design testing
      Given I open url "https://skryabin.com/market/quote.html"
      When I resize window to 1300 and 1000
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='currentDate']" should be displayed
      And element with xpath "//b[@id='currentTime']" should be displayed
      # Tablet layout
      When I resize window to 970 and 1000
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='currentDate']" should be displayed
      And element with xpath "//b[@id='currentTime']" should be displayed
      # Cellphone layout
      When I resize window to 600 and 1000
      Then element with xpath "//b[@id='location']" should not be displayed
      And element with xpath "//b[@id='currentDate']" should not be displayed
      And I wait for 2 sec
      And element with xpath "//b[@id='currentTime']" should not be displayed