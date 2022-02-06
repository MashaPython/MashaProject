*** Settings ***
Documentation    test rase caini
Resource    Exercitii.robot
Test Setup    Setup_dogs
*** Variables ***
${dog1}    Shiba
${dog2}    Chihuahua
${dog3}    Bulldog
${dog4}    Golden
${dog5}    Bichon
${msg1}    Masha si Fetch
*** Test Cases ***
dogs_test
    ${dogs_name} =    FAVORITE PETS      ${dog1}    ${dog2}    ${dog3}    ${dog4}    ${dog5}



*** Keywords ***
Setup_dogs
    MESSAGE PETS    ${msg1}