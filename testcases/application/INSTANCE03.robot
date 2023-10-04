*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Test Teardown    common.Close application

*** Test Cases ***
INSTANCE02 - Verify search result is matches with search keyword
    [Tags]    INSTANCE    addproduct
    search_feature.Search product    Cola
    search_feature.Click add product when user not login    1    RED    4