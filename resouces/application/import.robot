*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
Library    pabot.PabotLib

#Dobby-Library
Resource       DobbyCommonLibrary/DobbyCommon.robot
Resource       DobbyCommonLibrary/DobbyAppCommon.robot



Variables    ${CURDIR}/../${PLATFORM}/settings/setting.yaml

#Common keyword and database
Resource    ${CURDIR}/../../keywords/${PLATFORM}/common.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/pages/login_page.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/pages/home_page.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/pages/search_page.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/pages/checkout_page.robot

#feature
Resource    ${CURDIR}/../../keywords/${PLATFORM}/features/home_feature.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/features/login_feature.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/features/search_feature.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/features/checkout_feature.robot