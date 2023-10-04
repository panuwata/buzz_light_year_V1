*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE01 - Verify login with invalid username
    [Tags]    INSTANCE-WEB
    login_feature.Login doppee website    panuwat.doppio@gmail.com      Shinemoon1!
    login_feature.Verify popup failed is displayed    Login page   Login Failed
