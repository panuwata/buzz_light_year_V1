*** Keywords ***
Verify search result is contains with search keyword
    [Arguments]    ${search_keywords}
    DobbyAppCommon.Wait until element is visible except stale    //android.widget.TextView[@resource-id="com.ebay.mobile:id/textview_header_0"]
    @{element}=    AppiumLibrary.Get webelements    //android.widget.TextView[@resource-id="com.ebay.mobile:id/textview_header_0"]
    FOR  ${i}  IN  @{element}
        ${product_name}=    DobbyAppCommon.Get text from element when ready    ${i}
        BuiltIn.Should contain    ${product_name}    ${search_keywords}    msg=product is not contains    ignore_case=${true}
    END

Click coca cola decal
    common.Find and tap element when ready    xpath=//android.widget.TextView[@text="Coca-Cola Decal YOU PICK SIZE AND COLOR!! #212"]    id=android:id/content    percent=0.5    timeout=1s

Click add to cart button
    common.Find and tap element when ready    accessibility_id=Add to cart    id=android:id/content    percent=0.5    timeout=1s

Click select decal color options
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Spinner[@content-desc="Decal Color,No selection"]

Select color of pack
    [Arguments]    ${color}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text="${color}"]

Click select decal size option
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Spinner[@content-desc="Decal Size,No selection"]

Select decal size option
    [Arguments]    ${size}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text='${size}"']

Click select quantity option
    DobbyAppCommon.Tap element when ready    xpath=com.ebay.mobile:id/quantity_selection_spinner

Select quantity option
    [Arguments]    ${quantity}
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.TextView[@text='${quantity}']

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

Click buy it now
    DobbyAppCommon.Tap element when ready    xpath=//android.widget.Button[@content-desc="Buy It Now"]

Click mini cart
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/menu_impl_common_action_cart_icon

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

Tap save this search noti
    DobbyAppCommon.Tap element when ready    id=com.ebay.mobile:id/text_slot_1

Verify noti save this search is displayed
    DobbyAppCommon.Wait until element is visible except stale    id=com.ebay.mobile:id/text_slot_1    timeout=10s

Skip noti save this search
    ${status}=    BuiltIn.Run keyword and return status    search_page.Verify noti save this search is displayed
    IF  ${status}
        search_page.Verify noti save this search is displayed
    END