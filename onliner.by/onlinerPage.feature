Feature: mainPage

    #Smoke tests for onliner.by mane page

    Scenario Outline: Check that clicking <mainPagePartition> header opens apropriate <partitionPage>

        Given I am on the main page of onliner.by
        When I click on the <mainPagePartition> in the Header
        Then I redirected to the <partitionPage>
        Examples:
            | mainPagePartition | partitionPage              |
            | �������           | catalog.onliner.by         |
            | ����              | people.onliner.by          |
            | ������            | people.onliner.by/opinions |
            | ����              | auto.onliner.by            |
            | ����������        | tech.onliner.by            |
            | Onliner.������    | sp.onliner.by/library/     |
            | ������������      | realt.onliner.by           |
            | �����             | forum.onliner.by           |
