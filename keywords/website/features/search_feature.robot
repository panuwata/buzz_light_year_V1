*** Keywords ***
Saerch product by product name
    [Arguments]    ${product_name}
    search_page.Input search keywords    ${product_name}
    search_page.Click search button