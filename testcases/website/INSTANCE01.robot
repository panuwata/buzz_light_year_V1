*** Settings ***
Resource    ${CURDIR}/../../resouces/website/import.robot

*** Variables ***
&{home_page}
...    txt_search_box=xpath=//input[@aria-label="Search for anything"]
...    btn_search=xpath=//input[@value="Search"]
...    lbl_li_items=xpath=//li[contains(@id,"item")]

*** Keywords ***
Input search keywords
    [Arguments]    ${search_keywords}
    DobbyWebCommon.Input text to element when ready    ${home_page['txt_search_box']}    ${search_keywords}

Click search button
    DobbyWebCommon.Click element when ready    ${home_page['btn_search']}


*** Test Cases ***
INSTANCE01 - Verify 
    common_website.Open ebay website
    Input search keywords    cola
    Click search button

    Debug