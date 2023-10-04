*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE02 - Verify login with valid username
    [Tags]    INSTANCE-WEB
    login_feature.Login doppee website    panuwat.doppio@gmail.com      BuzzLightYear0!
    login_feature.Verify popup successfully is displayed    Login page    Login successfully
    login_page.Click user login button on topbar
    customer_information_page.Verify email is displayed    panuwat.doppio@gmail.com
    customer_information_page.Click logout button