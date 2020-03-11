Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Google"
    And I fill in "category_keywords" with "Search Engine"
    And I fill in "category_permalink" with "gg"
    And I fill in "category_description" with "test categories"
    And I press "Save"
    Then I should see "Google"
    Then I should see "Search Engine"
    Then I should see "gg"
    Then I should see "test categories"

    Then I follow "Google"
    
    
    When I fill in "category_name" with "Facebook"
    And I fill in "category_keywords" with "Social Network"
    And I fill in "category_permalink" with "fb"
    And I fill in "category_description" with "test categories again"
    And I press "Save"
    Then I should see "Facebook"
    Then I should see "Social Network"
    Then I should see "fb"
    Then I should see "test categories again"