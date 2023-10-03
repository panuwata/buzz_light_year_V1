*** Keywords ***
Search and verify results is corresponded with search keyword
    [Arguments]    ${search_keywords}
    home_page.Click search bar
    home_page.Input search keywords    ${search_keywords}
    search_page.Verify search result is contains with search keyword    ${search_keywords}

Click add product by select option
    [Arguments]    ${color}    ${size}    ${quantity}
    search_page.Click first product
    search_page.Click add to cart button
    search_page.Click select decal color options
    search_page.Select color of pack    ${color}
    search_page.Click select decal size option
    search_page.Select decal size option    ${size}
    # search_page.Click select quantity option
    # search_page.Select quantity option    ${quantity}
    search_page.Click add to cart button on checkout page
    # search_page.Click buy it now
    # search_page.Click close button
    # search_page.Click go to cart
    # search_page.Click go to checkout button
    search_page.Click mini cart
    search_page.Click remove button
    search_page.Click back button
    AppiumLibrary.Go back

Click add product by select option 2
    [Arguments]    ${number}    ${color}    ${size}
    search_page.Click first product
    search_page.Click add to cart button
    search_page.Click select pack option
    search_page.Click select number of pack    ${number}
    search_page.Click select color option
    search_page.Select color option    ${color}
    search_page.Click select size
    search_page.Select size option    ${size}
    search_page.Click add to cart button on checkout page
    search_page.Click go to cart
    search_page.Click go to checkout button
    search_page.Click close button
    search_page.Click remove button
    search_page.Click back button
    AppiumLibrary.Go back
    AppiumLibrary.Go back