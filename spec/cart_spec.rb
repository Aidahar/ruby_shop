require "rspec"
require_relative "../app/item"
require_relative "../app/antique_item"
require_relative "../app/virtual_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do

  before(:each) do
    @cart = Cart.new("andrew")
  end

  describe "managing items" do
    it "adds items into the cart" do
      item1 = Item.new("kettle", price: 200)
      item2 = Item.new("car", price: 300)
      @cart.add_items(item1, item2)
      @cart.items.should include(item1, item2)
    end
  end

  it "removes items from self"
  it "counts items in itself"
  it "places order using all the items that where added into the cart"
  it "clears itself off the items after an order is placed"
end
