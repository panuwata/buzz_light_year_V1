*** Keywords ***
Open ebay website
    [Arguments]    ${domain_website}=${base_url}
    DobbyWebCommon.Open chrome browser    ${domain_website} 
    SeleniumLibrary.Maximize browser window
    SeleniumLibrary.Set selenium timeout    ${GLOBAL_TIMEOUT}
    BuiltIn.Set library search order    SeleniumLibrary

Landing to other page by link
    [Arguments]    ${link}
    SeleniumLibrary.Go to    ${link}