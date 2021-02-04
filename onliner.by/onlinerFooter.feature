Feature: onlinerFooter

    #Smoke test cases for the Footer of onliner.by

    Scenario Outline: Check that clicking <footerMenuItem> opens apropriate <footerPage>

        Given I am on the main page of onliner.by
        When I click on the <footerMenuItem> in the Footer
        Then I redirected to the <footerPage>
        Examples:
            | footerMenuItem              | footerPage                                       |
            | � ��������                  | blog.onliner.by/about                            |
            | �������� ��������           | people.onliner.by/contacts                       |
            | �������                     | b2breg.onliner.by/advertising                    |
            | ���������� � ��������       | b2b.onliner.by/reg                               |
            | ��������                    | blog.onliner.by/vacancy                          |
            | ��������                    | blog.onliner.by/manifest                         |
            | ���������������� ���������� | blog.onliner.by/siterules                        |
            | ��������� ��������          | blog.onliner.by/publichnye-dogovory              |
            | �������� ������������������ | blog.onliner.by/politika-konfidencialnosti       |
            | ��������� �������������     | support.onliner.by/                              |
            | ������� ��������            | blog.onliner.by/pravila-vozvrata-tovarov-i-deneg |

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
