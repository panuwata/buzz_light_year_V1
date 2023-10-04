*** Keywords ***
Input search keywords
    [Arguments]    ${search_keywords}
    DobbyWebCommon.Input text to element when ready    //input[@placeholder="input search text"]    ${search_keywords}
    SeleniumLibrary.Press keys   none   ENTER 

Click search button
    DobbyWebCommon.Click element when ready    //input[@value="Search"]

Click product by product name
    [Arguments]    ${productName}
    DobbyWebCommon.Click element when ready    //div[text()="${productName}"]
