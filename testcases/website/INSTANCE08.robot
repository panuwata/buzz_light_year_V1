*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE01 - Verify able to search product
    [Tags]    INSTANCE-WEB
    search_feature.Saerch product by product name    Cola
    product_details_feature.Select product by name and select option of product    Coca-Cola Decal YOU PICK SIZE AND COLOR!!   Red    5"
    check_out_page.Click remove button
    login_page.Verify button sign in is displayed