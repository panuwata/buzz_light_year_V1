*** Settings ***
Resource    ${CURDIR}/../../resouces/application/import.robot
Suite Setup    common.Open ebay application
Suite Teardown    common.Close application

*** Test Cases ***
INSTANCE01 - Verify that customer able to sign in and sign out application
    [Tags]    INSTANCE    Signin_Signout
    login_feature.Login to ebay application    panuwat.a@doppiotech.com    Shinemoon1!
    home_feature.Sign out username to ebay application
