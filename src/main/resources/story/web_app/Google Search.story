Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|search-input-field |By.fieldName(q)                 |
|search-button      |By.xpath((//*[@name='btnK'])[1])|
|accept-button      |By.xpath(//*[@id='L2AGLb'])|
|shopping-cart      |By.xpath(//*[@id='nav-cart-count-container'])|
|search-field       |By.xpath(//*[@id='twotabsearchtextbox'])|
|magnifier-icon     |By.xpath(//*[@id='nav-search-submit-button'])|
|search-word        |By.xpath(//*[@class='a-color-state a-text-bold'])|

Scenario: Verify VIVIDUS documentation is in Top 10 Google search results

Given I am on a page with the URL 'https://www.google.com/'
When I click on element located `<accept-button>`
When I enter `VIVIDUS test automation` in field located `<search-input-field>`
When I wait until element located `<search-button>` appears
Then number of elements found by `linkUrlPart(https://docs.vividus.dev/vividus/)->filter.textPart(What is VIVIDUS :: VIVIDUS)` is equal to `1`


Scenario: Verify that  Quest user can proceed to Search page from "Empty shopping cart" page

Given I am on a page with the URL 'https://www.amazon.com/'
When I click on element located `<shopping-cart>`
When I enter `laptop` in field located `<search-field>`
When I click on element located `<magnifier-icon>`
Then element found by `<search-word>` is equal to `laptop`
