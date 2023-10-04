*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE03 - Verify customer can't register with invid email
    [Tags]    INSTANCE-WEB
    login_feature.Register doppee website    panuwat.doppio+1@gmail.com    BuzzLightYaer01!
    login_feature.Verify popup failed is displayed    Register page    Register Failed