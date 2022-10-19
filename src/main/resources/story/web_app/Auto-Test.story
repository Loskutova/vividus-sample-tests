

Scenario: Verify that twitter is opened
Given I am on a page with the URL 'https://swapi.dev/api/people/'
When I click on Twitter `By.xpath((//*[@id='l'])`
Then URL  "https://twitter.com/" is appeared
