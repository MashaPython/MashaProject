*** Settings ***
Documentation    The second test with crazy Roxana
Resource    library_secondTest.robot
Test Setup        SETUP_SECOND_TEST
Test Teardown     TEARDOWN_SECOND_TEST
*** Variables ***
${meal_1}   cafea
${meal_2}   tigara
${meal_3}   croissant
${meal_4}   slanina
${meal_5}   1bere
@{romanian_breakfast}    ${meal_1}    ${meal_2}    ${meal_3}     ${meal_4}    ${meal_5}
*** Test Cases ***
second_test
    Log to console    Others meals

    CHOOSE BREAKFAST    @{romanian_breakfast}
*** Keywords ***
SETUP_SECOND_TEST
    Log to console    First breakfast
    CHOOSE BREAKFAST    @{romanian_breakfast}

TEARDOWN_SECOND_TEST
    Log to console    First dinner