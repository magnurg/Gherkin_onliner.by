Feature: onlinerHeader

    #Smoke test cases for the Header of onliner.by
    Scenario Outline: Check that clicking <menuItem> opens apropriate <menuPage>

        Given I am on the main page of onliner.by
        When I click on the <menuItem> in the Header
        Then I redirected to the <pageItem>
        Examples:
            | menuItem        | menuPage             |
            | Каталог         | catalog.onliner.by   |
            | Новости         | onliner.by           |
            | Автобарахолка   | ab.onliner.by        |
            | Дома и квартиры | r.onliner.by/pk      |
            | Услуги          | s.onliner.by/tasks   |
            | Барахолка       | baraholka.onliner.by |
            | Форум           | forum.onliner.by     |
            | Onliner Клевер  | clever.onliner.by    |
            | 'Курс $'        | kurs.onliner.by      |
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
            | Вход      | Email&Password               |
            | Facebook  | Facebook authorization       |
            | VK        | Вход через ВКонтакте         |
            | G         | Google account authorization |

    Scenario: Check that clicking "cart" icon opens cart.onliner.by page
        Given I am on the main page of onliner.by
        When I click on the "cart" icon in the Header
        Then cart.onliner.by page opens