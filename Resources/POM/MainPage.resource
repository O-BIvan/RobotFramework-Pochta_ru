*** Settings ***
Documentation  Contains links, selectors, etc. for main page
Library  SeleniumLibrary
Resource  ./CommonPage.resource
Resource  ./TrackingPage.resource
*** Variables ***
${main_page}  https://www.pochta.ru/

*** Keywords ***
Search Valid Track Id Russia
    Input Text  ${track_id_input}  ${track_id_valid_russia}
    Click Button  ${track_id_submit}
    Page Should Contain Element  ${search_success_message}
    Page Should Not Contain Element  ${invalid_id_message}

Search Valid Track Id World
    Input Text  ${track_id_input}  ${track_id_valid_world}
    Click Button  ${track_id_submit}
    Page Should Contain Element  ${search_success_message}
    Page Should Not Contain Element  ${invalid_id_message}
