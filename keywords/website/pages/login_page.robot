*** Keywords ***

Verify button sign in is displayed
    DobbyWebCommon.Wait until element is visible except stale   //a[@data-test-id="sign-in"]

Click sign in button on topbar
    DobbyWebCommon.Click element when ready     //span[@class="gh-ug-guest"]//a[contains(@href,"signin")]

Input email or username
    [Arguments]    ${email}
    DobbyWebCommon.Input text to element when ready    id=userid    ${email}

Click continue button
    DobbyWebCommon.Click element when ready    id=signin-continue-btn

Input password
    [Arguments]    ${password}
    DobbyWebCommon.Input text to element when ready    id=pass    ${password}

Click sign in button
    DobbyWebCommon.Click element when ready    id=sgnBt

Verify greeting message is displayed
    DobbyWebCommon.Wait until element is visible except stale   id=greeting-msg