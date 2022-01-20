*** Keywords ***
CHOOSE BREAKFAST
    [Documentation]    Create list with different meals
    [Arguments]    ${meal_1}    ${meal_2}    ${meal_3}    ${meal_4}    ${meal_5}
    ${romanian_breakfast}=    Create List    ${meal_1}    ${meal_2}    ${meal_3}     ${meal_4}    ${meal_5}
    [Return]    ${romanian_breakfast}


