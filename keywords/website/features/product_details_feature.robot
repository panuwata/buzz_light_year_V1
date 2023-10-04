*** Keywords ***
Select item then verify product is displayed
    [Arguments]    ${product}    ${product_title}
    product_details_page.Click item by text    ${product}
    product_details_page.Verify title product is displayed    ${product_title}