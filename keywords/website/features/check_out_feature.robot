*** Keywords ***
Input credit card information
    [Arguments]    ${card_number}    ${expiration}    ${cvc}    ${card_own}
    check_out_page.Input card number    ${card_number}
    check_out_page.Input expiration date    ${expiration}
    check_out_page.Input cv code    ${cvc}
    check_out_page.Input card owner    ${card_own}
    check_out_page.Click confirm payment

Verify product details on order details is displayed
    [Arguments]    ${productName}    ${orderQuantity}    ${productPrice}
    product_details_page.Verify product name on order details section is displayed    ${productName}
    product_details_page.Verify product quantity on order details section is displayed    ${orderQuantity}
    product_details_page.Verify product price on order details section is displayed    ${productPrice}
