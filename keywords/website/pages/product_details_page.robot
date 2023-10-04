*** Keywords ***

Click button add to cart
    DobbyWebCommon.Click element when ready    //a[@data-testid="ux-call-to-action"]//span[text()="Add to cart"]

Select popular brand
    [Arguments]    ${brand}
    DobbyWebCommon.Click element when ready    //div[text()="${brand}"]

Select shop by brand
    [Arguments]    ${brand}
    DobbyWebCommon.Click element when ready    //p[text()="${brand}"]

Click item by text
    [Arguments]    ${text}
    DobbyWebCommon.Click element when ready    //p[text()="${text}"]

Verify title product is displayed
    [Arguments]    ${title}
    DobbyWebCommon.Wait until element is visible except stale    //h1[@class="bhp__title"][text()="${title}"]

Click add to cart button
    DobbyWebCommon.Click element when ready    //a[contains(@href,"sc/add")]

Click go to checkout
    DobbyWebCommon.Click element when ready    //button[@data-test-id="cta-top"]

Click select product by product name
    [Arguments]    ${product_name}
    DobbyWebCommon.Click element when ready    xpath=//li[contains(@id,"item")]//span[text()="${product_name}"]

Select decal color by color name
    [Arguments]    ${color_type}
    ${status}=    BuiltIn.Run keyword and return status    DobbyWebCommon.Wait until element is visible except stale    xpath=//select[contains(@selectboxlabel,"Decal Color")]
    IF  ${status}
        SeleniumLibrary.Select from list by label    xpath=//select[contains(@selectboxlabel,"Decal Color")]   ${color_type}
    END

Select decal size by size
    [Arguments]    ${size}
    ${status}=    BuiltIn.Run keyword and return status    DobbyWebCommon.Wait until element is visible except stale    xpath=//select[contains(@selectboxlabel,"Decal Size")]
    IF  ${status}
        SeleniumLibrary.Select from list by label    xpath=//select[contains(@selectboxlabel,"Decal Size")]   ${size}
    END