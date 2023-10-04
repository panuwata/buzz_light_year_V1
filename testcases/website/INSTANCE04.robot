*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE04 - Verify customer can able register with valid email
    [Tags]    INSTANCE-WEB
    ${username}=    login_feature.Register doppee website with random username    panuwat.doppio@gmail.com    BuzzLightYaer01!
    login_feature.Verify popup failed is displayed    Register page    Register successfully
    login_page.Click user login button on topbar
    customer_information_page.Verify email is displayed    ${username}
    customer_information_page.Click logout button