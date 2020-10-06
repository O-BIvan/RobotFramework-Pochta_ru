*** Settings ***
Documentation  Testing tracking for guests from main page

Resource  ../../../Resources/POM/CommonPage.resource
Resource  ../../../Resources/POM/MainPage.resource

Test Setup  Start TestCase
Test Teardown  Finish TestCase
*** Variables ***
*** Test Cases ***
Guest can track from the main page russian id

    Search Valid Track Id Russia

Guest can track from the main page world id

    Search Valid Track Id World