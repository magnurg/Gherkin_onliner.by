Feature: onlinerHeader

    #Smoke test cases for the Header of onliner.by
    Scenario Outline: Check that clicking <menuItem> opens apropriate <menuPage>

        Given I am on the main page of onliner.by
        When I click on the <menuItem> in the Header
        Then I redirected to the <pageItem>
        Examples:
            | menuItem        | menuPage             |
            | �������         | catalog.onliner.by   |
            | �������         | onliner.by           |
            | �������������   | ab.onliner.by        |
            | ���� � �������� | r.onliner.by/pk      |
            | ������          | s.onliner.by/tasks   |
            | ���������       | baraholka.onliner.by |
            | �����           | forum.onliner.by     |
            | Onliner ������  | clever.onliner.by    |
            | '���� $'        | kurs.onliner.by      |
            | 'Weather icon'  | pogoda.onliner.by    |

    Scenario: Check that clicking "Onliner logo" opens a main page onliner.by

        Given I am on the main page of onliner.by
        And I go to any child page
        When I click on the "Onliner logo" in the Header
        Then I redirected to the main page

    Scenario: Check that typing in the search string opens a pop-up window with the search results
        Given I am on the main page of onliner.by
        When I click on the search string in the Header
        And I type something
        Then Pop-up window with the search results comes up

    Scenario Outline: Check that clicking <loginItem> opens apropriate <loginPopup>

        Given I am on the main page of onliner.by
        When I click on the <loginItem> in the Header
        Then <loginPopup> window comes up
        Examples:
            | loginItem | loginPopup                   |
            | ����      | Email&Password               |
            | Facebook  | Facebook authorization       |
            | VK        | ���� ����� ���������         |
            | G         | Google account authorization |

    Scenario: Check that clicking "cart" icon opens cart.onliner.by page
        Given I am on the main page of onliner.by
        When I click on the "cart" icon in the Header
        Then cart.onliner.by page opens