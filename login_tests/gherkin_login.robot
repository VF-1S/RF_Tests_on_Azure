*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser


*** Test Cases ***
Valid Login
    Given Browser Is Opened To Login Page
    When User "Demo" Logs In With Password "Mode"
    Then Welcome Page Should Be Open


*** Keywords ***
Browser Is Opened To Login Page
    Open Browser To Login Page

User "${username}" logs in with password "${password}"
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
