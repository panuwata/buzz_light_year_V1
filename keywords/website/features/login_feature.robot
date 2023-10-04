*** Keywords ***

Login ebay website
    [Arguments]    ${email}    ${password}
    login_page.Click sign in button on topbar
    login_page.Input email or username    ${email}
    login_page.Click continue button
    login_page.Input password    ${password}
    login_page.Click sign in button