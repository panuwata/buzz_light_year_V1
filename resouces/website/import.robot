*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary


#Dobby-Library
Resource       DobbyCommonLibrary/DobbyCommon.robot
Resource       DobbyCommonLibrary/DobbyWebCommon.robot



Variables    ${CURDIR}/../${system}/settings/setting.yaml

#Common keyword and database
Resource    ${CURDIR}/../../keywords/${system}/common.robot
Resource    ${CURDIR}/../../keywords/${system}/features/search_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/product_details_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/login_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/check_out_feature.robot

Resource    ${CURDIR}/../../keywords/${system}/pages/search_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/product_details_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/login_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/check_out_page.robot