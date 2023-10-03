*** Keywords ***

Click search bar
    DobbyAppCommon.Tap element when ready   id=com.ebay.mobile:id/search_box

Input search keywords
    [Arguments]    ${search_keywords}
    DobbyAppCommon.Input text to element when ready    id=com.ebay.mobile:id/search_src_text    ${search_keywords}
    AppiumLibrary.Press Keycode    66

Tap sign in button
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/button_sign_in

Verify sign in button is not displayed
    AppiumLibrary.Wait until page does not contain element    id=com.ebay.mobile:id/button_sign_in    timeout=20s

Click menu my ebay
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.FrameLayout[@content-desc="My eBay"]

Click setting menu
    common.Find and tap element when ready    id=com.ebay.mobile:id/settings    id=android:id/content    percent=0.5    timeout=2s

Click sign out button
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text="Sign out"]