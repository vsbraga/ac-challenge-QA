Feature: As a customer
  I want to edit my shopping cart before checkout.
  I should be able to add, change quantity and remove from shopping cart.


  #Scenario1

  Scenario: Add a product to cart and edit it.
    Given I am on WilliamsSonomaPage
    When I add a fryer to the shopping cart
    And I change the quantity to two.
   Then I should see the quantity changed.


  #Scenario2

  #Scenario: Add a product to cart and delete it.
    Given I am on WilliamsSonomaPage
    When I add a fryer to the shopping cart
    And I delete the product
    Then I should see the shopping cart with no items.

