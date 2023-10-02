*** Keywords ***
Verify search result is contains with search keyword
    [Arguments]    ${search_keywords}
    DobbyAppCommon.Wait until element is visible except stale    //android.widget.TextView[@resource-id="com.ebay.mobile:id/textview_header_0"]
    @{element}=    AppiumLibrary.Get webelements    //android.widget.TextView[@resource-id="com.ebay.mobile:id/textview_header_0"]
    FOR  ${i}  IN  @{element}
        ${product_name}=    DobbyAppCommon.Get text from element when ready    ${i}
        BuiltIn.Should contain    ${product_name}    ${search_keywords}    msg=product is not contains    ignore_case=${true}
    END

Click first product
    DobbyAppCommon.Tap element when ready    xpath=(//android.widget.TextView[@resource-id="com.ebay.mobile:id/textview_header_0"])[1]

Click add to cart button
    common.Find and tap element when ready    accessibility_id=Add to cart    id=android:id/content    percent=0.5    timeout=1s

Click select pack option
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Spinner[@content-desc="PACK,No selection"]

Click select number of pack
    [Arguments]    ${number}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text="${number} PACK"]

Click select color option
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Spinner[@content-desc="COLOR:,No selection"]

Select color option
    [Arguments]    ${color}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text="${color}"]

Click select size
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Spinner[@content-desc="SIZE:,No selection"]

Select size option
    [Arguments]    ${size}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text='${size}"']

Click add to cart button on checkout page
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/buy_bar_button

Click go to cart
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/call_to_action_button

Click go to checkout button
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/sc_impl_checkout_button

Click close button
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.ImageButton[@content-desc="Close"]

Click remove button
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/sc_impl_cart_item_action_remove_from_cart

Click back button
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.ImageButton[@content-desc="Navigate up"]