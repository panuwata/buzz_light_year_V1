*** Keywords ***
Input search keywords
    [Arguments]    ${search_keywords}
    DobbyWebCommon.Input text to element when ready    //input[@aria-label="Search for anything"]    ${search_keywords}

Click search button
    DobbyWebCommon.Click element when ready    //input[@value="Search"]

Click product by product name
    [Arguments]    ${productName}
    DobbyWebCommon.Click element when ready    //span[text()="${productName}"]
