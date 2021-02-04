Feature: onlinerRegistration

    #Smoke test fo registration
    Scenario: Check that User go throw registration procedure
        Given I am on the main page of onliner.by
        When I click on "Вход" button in the header
        And I click on "Зарегистрироваться на Onliner" link
        And I fill in data:
            | Email                  | Password      | Reapeat password |
            | fawano7486@poetred.com | @Password_123 | @Password_123    |
        And I click on "Зарегистриррваться" button
        And I clik on "Подтвердить сейчас" button in the recieved Email message from onliner.by
        Then I was redirected to profile.onliner.by
