*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE04 - Verify ebay able to login ebay is work properly
    [Tags]    INSTANCE-WEB
    login_feature.Login ebay website    panuwat.doppio@gmail.com    Shinemoon1!
    search_feature.Saerch product by product name    Cola
    product_details_feature.Select product by name and select option of product    Coca-Cola Decal YOU PICK SIZE AND COLOR!!    Red    5"
    check_out_page.Click remove button
