*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Test Teardown    common.Close application

*** Test Cases ***
INSTANCE02 - Verify search result is matches with search keyword
    [Tags]    INSTANCE    addproduct1
    login_feature.Login to ebay application    panuwat.doppio@gmail.com    Shinemoon1!
    search_feature.Search product    Cola
    search_feature.Click add product by select option 2    1    RED    4
    home_feature.Sign out username to ebay application