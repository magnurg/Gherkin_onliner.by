Feature: onlinerFooter

    #Smoke test cases for the Footer of onliner.by

    Scenario Outline: Check that clicking <footerMenuItem> opens apropriate <footerPage>

        Given I am on the main page of onliner.by
        When I click on the <footerMenuItem> in the Footer
        Then I redirected to the <footerPage>
        Examples:
            | footerMenuItem              | footerPage                                       |
            | О компании                  | blog.onliner.by/about                            |
            | Контакты редакции           | people.onliner.by/contacts                       |
            | Реклама                     | b2breg.onliner.by/advertising                    |
            | Размещение в каталоге       | b2b.onliner.by/reg                               |
            | Вакансии                    | blog.onliner.by/vacancy                          |
            | Манифест                    | blog.onliner.by/manifest                         |
            | Пользовательское соглашение | blog.onliner.by/siterules                        |
            | Публичные договоры          | blog.onliner.by/publichnye-dogovory              |
            | Политика конфиденциальности | blog.onliner.by/politika-konfidencialnosti       |
            | Поддержка пользователей     | support.onliner.by/                              |
            | Правила возврата            | blog.onliner.by/pravila-vozvrata-tovarov-i-deneg |

    Scenario Outline: Check that clicking <socialNetworkIcon> opens a new tab with the apropriate <onliner.byGroup>

        Given I am on the main page of onliner.by
        When I click on the <socialNetworkIcon> in the Footer
        Then I redirected to the new tab with <onliner.byGroup>
        Examples:
            | socialNetworkIcon | onliner.byGroup            |
            | VK                | vk.com/onliner             |
            | Facebook          | facebook.com/onlinerby     |
            | Twitter           | twitter.com/OnlinerBY      |
            | Youtube           | youtube.com/user/onlinerby |
