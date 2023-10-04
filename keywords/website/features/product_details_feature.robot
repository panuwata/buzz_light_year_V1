*** Keywords ***
Select item then verify product is displayed
    [Arguments]    ${product}    ${product_title}
    product_details_page.Click item by text    ${product}
    product_details_page.Verify title product is displayed    ${product_title}

Select product by name and select option of product
    [Arguments]    ${product_name}    ${color}    ${size}
    product_details_page.Click select product by product name    ${product_name}
    ${handles}=    SeleniumLibrary.Get window handles
    SeleniumLibrary.Switch Window    ${handles}[1]
    product_details_page.Select decal color by color name    ${color}
    product_details_page.Select decal size by size    ${size}
    product_details_page.Click add to cart button