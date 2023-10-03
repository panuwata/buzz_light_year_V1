*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
Library    pabot.PabotLib

#Dobby-Library
Resource       DobbyCommonLibrary/DobbyCommon.robot
Resource       DobbyCommonLibrary/DobbyAppCommon.robot



Variables    ${CURDIR}/../${system}/settings/setting.yaml

#Common keyword and database
Resource    ${CURDIR}/../../keywords/${system}/common.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/login_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/home_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/search_page.robot
Resource    ${CURDIR}/../../keywords/${system}/pages/checkout_page.robot

#feature
Resource    ${CURDIR}/../../keywords/${system}/features/home_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/login_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/search_feature.robot
Resource    ${CURDIR}/../../keywords/${system}/features/checkout_feature.robot