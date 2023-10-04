*** Keywords ***
Login to ebay application
    [Arguments]    ${email_or_username}    ${password}
    ${status}=    BuiltIn.Run keyword and return status    home_page.Verify sign in button is not displayed
    IF  ${status}
        home_feature.Sign out username to ebay application
    END
    home_page.Tap sign in button
    login_page.Tap login email or username 
    login_page.Input username    ${email_or_username}
    login_page.Input password    ${password}
    login_page.Click login button