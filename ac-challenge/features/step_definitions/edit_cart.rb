When(/^I add a (.+) to the shopping cart$/) do | product |
  on(WilliamsSonomaPage).search product
  on.(WilliamsSonomaPage).choose_product2
  on.(WilliamsSonomaPage).add_to_cart
  on.(WilliamsSonomaPage).clickon_checkout
end

When(/^I change the quantity to two\.$/) do
  on.(WilliamsSonomaPage).change_qty
end

Then(/^I should see the quantity changed\.$/) do
  on.(WilliamsSonomaPage).check_changes
end

When(/^I delete the product$/) do
  on.(WilliamsSonomaPage).delete_item
end

Then(/^I should see the shopping cart with no items\.$/) do
  on.(WilliamsSonomaPage).check_cart
end


