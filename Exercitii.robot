*** Keywords ***
FAVORITE PETS
    [Documentation]    5 rase de caini
    [Arguments]    ${dog1}    ${dog2}    ${dog3}    ${dog4}    ${dog5}
    ${dogs_name} =    Create List    ${dog1}     ${dog2}    ${dog3}    ${dog4}    ${dog5}\
    [Return]    ${dogs_name}

MESSAGE PETS
    [Documentation]    3 mesaje pentru caini
    [Arguments]    ${msg1}
    log to console    Shiba inu is Masha
    log to console    ${msg1}
    log to console    Chihuahua is Fetch
