*** Keywords ***

Login doppee website
    [Arguments]    ${email}    ${password}
    login_page.Click user login button on topbar
    login_page.Input username    ${email}
    login_page.Input password    ${password}
    login_page.Click login button

Verify popup failed is displayed
    [Arguments]    ${page}    ${messsage_failed}
    login_page.Verify modal message is displayed
    login_page.Verify modal title modal is displayed    ${page}
    login_page.Verify modal content is displayed    ${messsage_failed}
    login_page.Click ok button on modal

Verify popup successfully is displayed
    [Arguments]    ${page}    ${messsage_passed}
    login_page.Verify modal message is displayed
    login_page.Verify modal title modal is displayed    ${page}
    login_page.Verify modal content is displayed    ${messsage_passed}
    login_page.Click ok button on modal

Register doppee website
    [Arguments]    ${email}    ${password}
    login_page.Click user login button on topbar
    login_page.Click sign up button
    login_page.Input register email address    ${email}
    login_page.Input register password    ${password}
    login_page.Input register confirm password    ${password}
    login_page.Click confirm signup button

Register doppee website with random username
    [Arguments]    ${email}    ${password}
    login_page.Click user login button on topbar
    login_page.Click sign up button
    ${random_username}=    login_page.Input register random email address    ${email}
    login_page.Input register password    ${password}
    login_page.Input register confirm password    ${password}
    login_page.Click confirm signup button
    [Return]    ${random_username}
