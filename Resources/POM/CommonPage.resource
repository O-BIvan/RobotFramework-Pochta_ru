*** Settings ***
Documentation  Contains links, locators that can be found on different pages
Library  SeleniumLibrary

Resource  ./MainPage.resource
*** Variables ***
${track_id_input}  id:tracking-number
${track_id_submit}  css:.SearchButton-sc-1dh275s-0
${track_id_valid_world}  CA123456789RU
${track_id_valid_russia}  35005145009747
${track_id_invalid}  122D345
*** Keywords ***
Start TestCase
    Open Browser  https://www.pochta.ru/  chrome
Finish TestCase
    Close Browser



