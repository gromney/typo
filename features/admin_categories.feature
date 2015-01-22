Feature: Administrar Categorias
  As a blog administrator
  In order to organize my post
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Categories page shown
    When I follow "Categories"
    Then I should be on the Categories page

  Scenario: Successfully Create Category 
    When I follow "Categories"
    Then I should see "Categories"
    And I fill in "Name" with "Test"
    And I fill in "Keywords" with "Test"    
    And I fill in "Permalink" with "Test"
    And I fill in "Description" with "Test"
    Then I press "Save"
    And I should see "Category was successfully saved."

  Scenario: Fail create a category
    When I follow "Categories"
    Then I should see "Categories"
    Then I press "Save"
    And I should see "Category could not be saved."
