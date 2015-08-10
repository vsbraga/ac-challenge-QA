class WilliamsSonomaPage
  include PageObject
  page_url  'www.williams-sonoma.com'
  #Scenario 1
  link(:cookware, :class => 'topnav-cookware ')
  link(:cookware_sets, :text => 'Cookware Sets')
  link(:product, :text => 'Demeyere 5-Plus 10-Piece Cookware Set')
  button(:add, :class => 'btn btn_addtobasket btn_addtobasket_add')
  link(:checkout_btn, :id => 'anchor-btn-checkout')
  div(:sku, :text => '80-7947786')
  h1(:shopping_cart, :text => 'Shopping Cart')

  @product_sku
  @item_number

  #Scenario 2

  text_field(:search_field, :id => 'search-field')
  link(:search_btn, :id => 'btnSearch')
  link(:quick_look_btn, :text => ' Quicklook ')
  div(:find_quick_look_btn, :class => 'product-thumb')
  link(:product_selected, :text => 'Breville Quick Touch Microwave')
  @product_to_compare

  #Scenario 1 def
  def goto_category
    #binding.pry
    self.cookware_element.when_present.hover
   # sleep(2)
    self.cookware_sets_element.when_present.click
  end

  def choose_product
    self.product_element.when_present.click
  end

  def add_to_cart

    self.add_element.when_present.click

  end

  def check_out
    sleep(2)
    #binding.pry
    if self.sku?
      @product_sku = self.sku
      self.checkout_btn_element.present.click
    end
  end

  def on_page
    sleep(2)
    if self.shopping_cart?
       @product_sku.exist
    end
  end

  #Scenario 2

  def search s_field
    sleep(2)

    self.search_field = s_field
    self.search_btn

    sleep(2)
  end

  def quick_look
    #binding.pry
    self.find_quick_look_btn_element.when_present.hover
  end

  def click_quick_look
    self.find_quick_look_btn_element.when_present.hover
    @product_to_compare = self.product_selected
    self.quick_look_btn_element.when_present.click
  end

  def compare
   if @product_to_compare.exist?
     print("true")

   end

  end


end