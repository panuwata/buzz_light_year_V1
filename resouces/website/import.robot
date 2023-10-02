*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary


#Dobby-Library
Resource       DobbyCommonLibrary/DobbyCommon.robot
Resource       DobbyCommonLibrary/DobbyWebCommon.robot



Variables    ${CURDIR}/../${PLATFORM}/settings/setting.yaml

#Common keyword and database
Resource    ${CURDIR}/../../keywords/${PLATFORM}/common_website.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/features/test01.robot
Resource    ${CURDIR}/../../keywords/${PLATFORM}/pages/test01.robot