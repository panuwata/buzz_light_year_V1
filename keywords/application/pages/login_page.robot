*** Keywords ***
Input username
    [Arguments]    ${username}
    DobbyAppCommon.Input text to element when ready    id=com.ebay.mobile:id/edit_text_username    ${username}

Input password
    [Arguments]    ${password}
    DobbyAppCommon.Input text to element when ready    id=com.ebay.mobile:id/password_input_text    ${password}

Tap login email or username 
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/button_classic

Verify login email or username button is displayed
    DobbyAppCommon.Wait until element is visible except stale    id=com.ebay.mobile:id/button_classic

Click login button
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/button_sign_in

Verify logo ebay is displayed
    DobbyAppCommon.Wait until element is visible except stale    xpath=//android.widget.ImageView[@content-desc="eBay"]
