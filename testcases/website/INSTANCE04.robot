*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE04 - Verify ebay able to login ebay is work properly
    [Tags]    INSTANCE   xx
    common.Landing to other page by link    https://www.ebay.com/itm/134638042371?_trkparms=pageci%3Aa7844d4b-6208-11ee-90f0-0eac0a3c8356%7Cparentrq%3Af65686a718a0a55191639dbfffff3b98%7Ciid%3A1&var=434175605789
    product_details_page.Click add to cart button
    product_details_page.Click go to checkout
    login_page.Verify greeting message is displayed