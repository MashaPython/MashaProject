*** Keywords ***
LIST OF DAYS
    [Arguments]    ${arg1}    ${arg2}    ${arg3}    ${arg4}
    log to console    ${arg1}
    log to console    ${arg2}
    log to console    ${arg3}
    log to console    ${arg4}
    Run keyword If    "${arg1}"=="Luni"    Log to console    Facem Mancare
    ...    ELSE    Log to console    Facem Curatenie

ACTIVITY OF DAYS
     [Arguments]    ${day}
     Log    ${day}
     Run Keyword If    "${day}"=="Luni"    Log    Masha
     ...     ELSE IF    "${day}"=="Marti"    Log    Fetch
     ...     ELSE IF    "${day}"=="Miercuri"    Log    Adi
     ...     ELSE IF    "${day}"=="Joi"    Log    Dani
     ...     ELSE IF    "${day}"=="Vineri"    Log    Roxana
     ...     ELSE    Log    Variabila ${day} nu trebuie sa fie Sambata/Duminica

LIST WEEK
    [Arguments]    ${days_01}    ${days_02}    ${days_03}    ${days_04}    ${days_05}    ${days_06}    ${days_07}
    ${list_week} =    Create List    ${days_01}    ${days_02}    ${days_03}    ${days_04}    ${days_05}    ${days_06}    ${days_07}
    [Return]    ${list_week}