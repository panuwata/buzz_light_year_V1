*** Keywords ***

Verify button sign in is displayed
    DobbyWebCommon.Wait until element is visible except stale   //a[@data-test-id="sign-in"]

Click user login button on topbar
    DobbyWebCommon.Click element when ready     xpath=(//*[local-name()="svg"][@data-icon="user"])[1]

Input username
    [Arguments]    ${username}
    DobbyWebCommon.Input text to element when ready    xpath=//label[@title="Username"]/ancestor::div[contains(@class,"ant-form-item")]//input    ${username}

Input password
    [Arguments]    ${password}
    DobbyWebCommon.Input text to element when ready    xpath=//label[@title="Password"]/ancestor::div[contains(@class,"ant-form-item")]//input    ${password}

Click login button
    DobbyWebCommon.Click element when ready    xpath=(//button[contains(@class,"button-login")])[1]

Verify login button is displayed
    DobbyWebCommon.Wait until element is visible except stale    xpath=(//button[contains(@class,"button-login")])[1]

Click sign up button
    DobbyWebCommon.Click element when ready    xpath=(//button[contains(@class,"button-login")])[2]

Verify greeting message is displayed
    DobbyWebCommon.Wait until element is visible except stale   id=greeting-msg

Verify modal message is displayed
    DobbyWebCommon.Wait until element is visible except stale    xpath=//div[@class="ant-modal-content"]

Verify modal title modal is displayed
    [Arguments]    ${page}
    DobbyWebCommon.Wait until element is visible except stale    xpath=//span[@class="ant-modal-confirm-title"][text()="${page}"]

Verify modal content is displayed
    [Arguments]    ${status_login}
    DobbyWebCommon.Wait until element is visible except stale    xpath=//div[@class="ant-modal-confirm-content"][text()="${status_login}"]

Click ok button on modal
    DobbyWebCommon.Click element when ready    xpath=//div[@class="ant-modal-content"]//button[contains(@class,"ant-btn-primary")]

Input register email address
    [Arguments]    ${username}
    DobbyWebCommon.Input text to element when ready    id=basic_username    ${username}

Input register random email address
    [Arguments]    ${username}
    ${random_string}=    String.Generate random string    10    [NUMBERS]
    ${email}=    String.Split string    ${username}     @
    ${random_username}=    BuiltIn.Evaluate    '${email}[0]'+'${random_string}'+'@'+'${email}[1]'
    DobbyWebCommon.Input text to element when ready    id=basic_username    ${random_username}
    [Return]    ${random_username}

Input register password
    [Arguments]    ${password}
    DobbyWebCommon.Input text to element when ready    id=basic_password    ${password}

Input register confirm password
    [Arguments]    ${confirm_password}
    DobbyWebCommon.Input text to element when ready    id=basic_confirmPassword    ${confirm_password}

Click confirm signup button
    DobbyWebCommon.Click element when ready    xpath=//div[@class="ant-form-item-control-input-content"]//button