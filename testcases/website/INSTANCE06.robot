*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE06 - Verify if customer not login shouldn't complete an order
    [Tags]    INSTANCE-WEB
    search_page.Input search keywords    Phone
    search_page.Click product by product name    Retro phone
    product_details_page.Click add to cart button 
    login_feature.Verify popup successfully is displayed    Product detail page    Add product successfully
    common.Click mini cart icon
    login_page.Verify login button is displayed
