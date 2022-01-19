* Settings *
Documentation     Un Keyword de primeste 4 argumente, printam in terminal fiecare argumanet in parte
...      Pentru fiecare argument trebuie printat urmatoarele:
...      Daca este luni
Test Setup        SETUP_main_test
Test Teardown     TEARDOWN_main_test
Resource    library.robot


* Variables *
${arg1}    Luni
${arg2}    Marti
${arg3}    Miercuri
${arg4}    Joi
#=============================================

${days_01}    Luni
${days_02}    Marti
${days_03}    Miercuri
${days_04}    Joi
${days_05}    Vineri
${days_06}    Sambata
${days_07}    Duminica

# &{var_dictionary}     Dictionar
# @{var_list}     Lista
* Keywords *
SETUP_main_test
    Log to console     =====START MAIN TEST=====
#    Run Keyword And Continue On Failure    LIST WEEK    ${days_01}

TEARDOWN_main_test
    Log to console     =====STOP MAIN TEST=====

* Test Cases *
main_test
    ${result}=    LIST OF DAYS    ${arg1}    ${arg2}    ${arg3}    ${arg4}
    Log       =====111=====
#===ce returneaza=====nume_keyword=======argument======
    ${result}=     ACTIVITY OF DAYS    ${days_01}
    ${result}=     ACTIVITY OF DAYS    ${days_02}
    ${result}=     ACTIVITY OF DAYS    ${days_03}
    Log     =====222=====
    ${result}=     ACTIVITY OF DAYS    ${days_04}
#    Run Keyword And Continue On Failure    LIST WEEK    ${days_01}
    Log     =====333=====
    ${result}=     ACTIVITY OF DAYS    ${days_05}
    ${result}=     ACTIVITY OF DAYS    ${days_06}
    ${list_result} =    LIST WEEK    ${days_01}    ${days_02}    ${days_03}    ${days_04}    ${days_05}     ${days_06}     ${days_07}
#     Run Keyword And Continue On Failure    LIST WEEK    @{list_result}     ${days_01}
    Log     =====444=====
    ${list_result} =    LIST WEEK    ${days_01}    ${days_02}    ${days_03}    ${days_04}    ${days_05}     ${days_06}     ${days_07}
    Log     =====555=====
    ${list_result} =    LIST WEEK    @{list_result}
    Log     =====666=====
#     Run Keyword And Continue On Failure    ${list_result} =    LIST WEEK    ${days_01}    ${days_02}    @{list_result}    ${days_04}    ${days_05}     ${days_06}     ${days_07}
    Log     =====777=====