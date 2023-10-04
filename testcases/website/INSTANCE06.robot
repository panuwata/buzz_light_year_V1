*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot
Test Setup    common.Open ebay website
Test Teardown    DobbyWebCommon.Default test teardown

*** Test Cases ***
INSTANCE02 - Verify product details is work properly
    [Tags]    INSTANCE-WEB
    login_feature.Login ebay website    panuwat.doppio@gmail.com    Shinemoon1!
    product_details_page.Select popular brand    มือถือและสมาร์ทโฟน
    product_details_page.Select shop by brand    Apple
    product_details_feature.Select item then verify product is displayed    Apple iPhone 13 Pro Max    iPhone 13 Pro Max