*** Keywords ***

Verify email is displayed
    [Arguments]    ${email}
    DobbyWebCommon.Wait until element is visible except stale    xpath=//label[@for="form_item_user_email"]/parent::div[contains(@class,"item-label")]/following-sibling::div//div[text()="${email}"]

Click logout button
    DobbyWebCommon.Click element when ready    xpath=//button[contains(@class,"ant-btn-dangerous")]