*** Keywords ***
Open ebay application
    AppiumLibrary.Set appium timeout    ${GLOBAL_TIMEOUT}
    BuiltIn.Set Library search order    DobbyAppCommon    AppiumLibrary
    AppiumLibrary.Set Appium Timeout    ${GLOBAL_TIMEOUT}
    IF  '${require_farm}'=='True'
        DobbyAppCommon.Init mobile farm configuration
    END
    &{capability}=                                   BuiltIn.Create dictionary             
    ...                                              automationName=${automation.lower()}
    ...                                              platformName=${platformz}
    ...                                              platformVersion=${platformVersion}
    ...                                              deviceName=${deviceName}
    ...                                              udid=${udid}
    # ...                                              app=${app}
    ...                                              noReset=${noReset}
    ...                                              fullReset=${fullReset}
    ...                                              newCommandTimeout=${0}
    ...                                              autoGrantPermissions=${TRUE}
    ...                                              unicodeKeyboard=${FALSE}
    ...                                              resetKeyboard=${TRUE}
    ...                                              autoAcceptAlerts=${TRUE}
    ...                                              autoDismissAlerts=${TRUE}
    ...                                              systemPort=${systemPort}
    # ...                                              language=${LANG}
    # ...                                              locale=${LANG.upper()}
    ...                                              wdaLocalPort=${systemPort}
    ...                                              enforceXPath1=${TRUE}
    ...                 appPackage=${appPackage}
    ...                 appActivity=${appActivity}
    # IF  '${require_farm}'=='True'
    # # ${remoteUrl}=    String.Remove string    ${remoteUrl}    /wd/hub
    #     ${remoteUrl}=    String.Remove string    ${remoteUrl}    /wd/hub
    # END
    
    BuiltIn.Log                       remote_url=${remoteUrl}
    BuiltIn.Log                       capability=${capability}
    AppiumLibrary.Open application
    ...                               remote_url=${remoteUrl}
    ...                               &{capability}
    AppiumLibrary.Wait until page does not contain element    xpath=//android.widget.LinearLayout[@resource-id="com.ebay.mobile:id/progressContainer"]//android.widget.ProgressBar    timeout=${GLOBAL_TIMEOUT}

Find and tap element when ready
    [Arguments]    ${locator}    ${scroll_view}    ${default_scroll_view}=${NONE}    ${moveto}=Top
    ...    ${percent}=0.3    ${number_of_scroll}=10    ${timeout}=${GLOBAL_TIMEOUT}
    DobbyAppCommon.Find element    ${locator}    ${scroll_view}    ${default_scroll_view}    ${moveto}
    ...    ${percent}    ${number_of_scroll}    ${timeout}
    DobbyAppCommon.Tap element when ready    ${locator}

Close application
    Run keyword and ignore error    AppiumLibrary.Capture page screenshot
    Run keyword if test failed      Run keyword and ignore error    AppiumLibrary.Log source
    AppiumLibrary.Close all applications
