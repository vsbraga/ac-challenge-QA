Given(/^I am on (.+)$/) do |webpage|
  visit webpage

end

When(/^I select a category using a flyout menu$/) do
  on(WilliamsSonomaPage).goto_category
end

And(/^I choose a product$/) do
  on(WilliamsSonomaPage).choose_product
end

And(/^I add this product to cart$/) do
  on(WilliamsSonomaPage).add_to_cart
end

And(/^I click on checkout button$/) do
  on(WilliamsSonomaPage).check_out
end
Then(/^I should see the product on the shopping cart page$/) do
  on(WilliamsSonomaPage).on_page
end

When(/^I search for (.+)$/) do |product|
  on(WilliamsSonomaPage).search product

end
And(/^I hover over to see quick look button$/) do
  on(WilliamsSonomaPage).quick_look
end
And(/^I click on quick look$/) do
  on(WilliamsSonomaPage).click_quick_look
end
Then(/^I should see the same product that I selected$/) do
  on(WilliamsSonomaPage).compare

end