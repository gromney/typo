Feature: Merge article
  As a administrator
  In order to not repeat content in an article
  I can merge articles
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exits
      | id | title  | body     | author | allow_comments |
      | 1  | test   | palomo 1 | polo   | true           |
      | 2  | test 2 | palomo 2 | yolo   | true           |
      | 3  | test 3 | palomo 3 | bolo   | true           |
      | 4  | test 4 | palomo 4 | polo   | true           |
    And the following comments exist
      | title     | body           | author | 
      | comment 1 | comment 1 body | 1      |
      | comment 2 | comment 2 body | 1      |
    
    Scenario: Successfully merge articles by body
      Given I am on the article page for "test"
      And I fill in "merge_with" with "3"
      And I press "Merge"
      Then article "test test 3" should have body "palomo 1 palomo 3"
    
    Scenario: Successfully merge articles by author
      Given I am on the article page for "test"
      And I fill in "merge_with" with "3"
      And I press "Merge"
      Then the article "test test 3" should have author "polo" or "bolo"
      
