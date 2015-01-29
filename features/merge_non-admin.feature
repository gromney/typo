Feature: Can not merge articles
  As a non-admin user
  I can not merge two articles
  
  Background:
    Given the blog is set up
    And I am logged as publisher user
    And the following articles exits
    | title | body      | author  |
    | test  | body test | author1 |
    
  Scenario: A non-admin can not merge two articles
    Given I am on the article page for "test"
    Then I should not see "Merge Articles"
