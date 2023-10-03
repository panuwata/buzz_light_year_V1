*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Test Teardown    common.Close application

*** Test Cases ***
INSTANCE02 - Verify search result is matches with search keyword
    [Tags]    INSTANCE    addproduct
    login_feature.Login to ebay application    panuwat.a@doppiotech.com    Shinemoon1!
    search_feature.Search and verify results is corresponded with search keyword    Cola
    search_feature.Click add product by select option    1    RED    4
    home_feature.Sign out username to ebay application