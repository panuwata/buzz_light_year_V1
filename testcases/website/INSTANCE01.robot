*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE01 - Verify able to search product
    [Tags]    INSTANCE1
    search_page.Input search keywords    Cola
    search_page.Click search button
    search_page.Click product by product name    NEW COCA COLA Y3000 LIMITED EDITION FLAVOR 10 MINI CANS COKE CO-CREATED WITH AI
    ${handles}=    SeleniumLibrary.Get window handles
    SeleniumLibrary.Switch Window  ${handles}[1]
    product_details_page.Click button add to cart
    check_out_page.Click remove button
    login_page.Verify button sign in is displayed