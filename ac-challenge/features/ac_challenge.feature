Feature: 1: As a customer
  I want to go to a product page and add the product to the cart
  I should be able to see this product added to cart on shopping cart page
  2: As a customer
  I want to search for a product and open it's quick look overlay
  I should be able to see the exact same clicked product on the quick look overlay

#Scenario1

  Scenario: Add a product to cart and go to shopping cart page
    Given I am on WilliamsSonomaPage
    When I select a category using a flyout menu
    And I choose a product
    And I add this product to cart
    And I click on checkout button
    Then I should see the product on the shopping cart page

#Scenario2

  Scenario: Search a product and verify after clicking that is the same product
    Given I am on WilliamsSonomaPage
    When I search for microwave
    And I hover over to see quick look button
    And I click on quick look
    Then I should see the same product that I selected
