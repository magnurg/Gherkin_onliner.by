Feature: mainPage

    #Smoke tests for onliner.by mane page

    Scenario Outline: Check that clicking <mainPagePartition> header opens apropriate <partitionPage>

        Given I am on the main page of onliner.by
        When I click on the <mainPagePartition> in the Header
        Then I redirected to the <partitionPage>
        Examples:
            | mainPagePartition | partitionPage              |
            | Каталог           | catalog.onliner.by         |
            | Люди              | people.onliner.by          |
            | Мнения            | people.onliner.by/opinions |
            | Авто              | auto.onliner.by            |
            | Технологии        | tech.onliner.by            |
            | Onliner.Лучшее    | sp.onliner.by/library/     |
            | Недвижимость      | realt.onliner.by           |
            | Форум             | forum.onliner.by           |
