*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${USERNAME}     demo
${PASSWORD}     mode


*** Test Cases ***
Valid Login
    Given Browser Is Opened To Login Page
    When User Logs In With Valid Credentials
    Then Welcome Page Should Be Open

*** Keywords ***
Browser Is Opened To Login Page
    Open Browser To Login Page

When User Logs In With Valid Credentials
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Submit Credentials
