*** Keywords ***
Click remove button
    DobbyWebCommon.Click element when ready    //button[@data-test-id="cart-remove-item"]

Click pay button
    DobbyWebCommon.Click element when ready    xpath=//button[contains(@class,"ant-btn-dangerous")]//span[text()="PAY"]

Select credit card payment method
    DobbyWebCommon.Click element when ready    xpath=//input[@value="creditCard"]/parent::span

Select qr code payment method
    DobbyWebCommon.Click element when ready    xpath=//input[@value="qrCode"]/parent::span

Click next button
    DobbyWebCommon.Click element when ready    xpath=//button[contains(@class,"ant-btn-dangerous")]//span[text()="Next"]

Input card number
    [Arguments]    ${card_number}
    DobbyWebCommon.Input text to element when ready    id=basic_bin    ${card_number}

Input expiration date
    [Arguments]    ${expiration}
    DobbyWebCommon.Input text to element when ready    id=basic_exp   ${expiration}

Input cv code
    [Arguments]    ${cvc}
    DobbyWebCommon.Input text to element when ready    id=basic_cvc    ${cvc}

Input card owner
    [Arguments]    ${card_own}
    DobbyWebCommon.Input text to element when ready    id=basic_owner    ${card_own}

Click confirm payment
    DobbyWebCommon.Click element when ready    xpath=//button[contains(@class,"button-login")]

Verify payment is complete
    DobbyWebCommon.Wait until element is visible except stale    xpath=//div[@class="success-title"][text()=" Payment Complete "]

Verify order complete
    DobbyWebCommon.Wait until element is visible except stale    xpath=//div[@class="success-title"][text()=" Order Complete "]
