*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Suite Teardown    AppiumLibrary.Close application

*** Test Cases ***
INSTANCE02 - Verify search result is matches with search keyword
    [Tags]    INSTANCE    search
    login_feature.Login to ebay application    panuwat.a@doppiotech.com    Shinemoon1!
    search_feature.Search and verify results is corresponded with search keyword    Cola
    home_feature.Sign out username to ebay application
