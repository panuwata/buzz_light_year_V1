*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE05 - Verify customer able to complete an order with credit card
    [Tags]    INSTANCE-WEB
    login_feature.Login doppee website    panuwat.doppio@gmail.com      BuzzLightYear0!
    login_feature.Verify popup successfully is displayed    Login page    Login successfully
    search_page.Input search keywords    Doppee
    search_page.Click product by product name    Doppee phone
    product_details_page.Click add to cart button 
    login_feature.Verify popup successfully is displayed    Product detail page    Add product successfully
    common.Click mini cart icon
    check_out_feature.Verify product details on order details is displayed    Doppee phone    1    19980
    check_out_page.Click pay button
    check_out_page.Select credit card payment method
    check_out_page.Click next button
    check_out_feature.Input credit card information    4111111111111111    02/2024    222    Panuwat Aiemsa
    login_feature.Verify popup successfully is displayed    Payment page    Payment successfully
    check_out_page.Verify payment is complete