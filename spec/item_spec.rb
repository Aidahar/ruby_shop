require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  before(:each) do
    @item = Item.new("kettle", price: 200)
  end

  it "calculates price" do
    @item.price.should == 212
  end

  it "return info about an object" do
    @item.to_s.should == "kettle:212.0"
  end

  it "calculate tax" do
    @item.send(:tax).should_not be_nil
  end
end
