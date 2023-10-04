*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Test Teardown    common.Close application

*** Test Cases ***
INSTANCE02 - Verify search result is matches with search keyword
    [Tags]    INSTANCE    search
    search_feature.Search product   Cola
