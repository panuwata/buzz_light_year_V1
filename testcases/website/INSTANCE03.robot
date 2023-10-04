*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE03 - Verify ebay able to login ebay is work properly
    [Tags]    INSTANCE1
    login_feature.Login ebay website    panuwat.doppio@gmail.com    Shinemoon1!