require_relative "app/store_application"

StoreApplication.config do |app|
  app.name = "My Store"
  app.enviroment = :production

  app.admin do |admin|
    admin.email = "zagirik@gmail.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end
end

p StoreApplication.enviroment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login


@items = []
@items << AntiqueItem.new(:price => 101, :weight => 100, :name => "car")
@items << RealItem.new(:price => 101, :weight => 100, :name => "kettle")
@items << RealItem.new(:price => 111, :weight => 100, :name => "diswasher")

@items.each { |name| puts name.name  }

cart = Cart.new("roman")
cart.add_item RealItem.new(:price => 101, :weight => 100, :name => "car")
cart.add_item RealItem.new(:price => 151, :weight => 100, :name => "car")
cart.add_item RealItem.new(:price => 121, :weight => 100, :name => "kettle")

order = Order.new
@items.each { |i| order.add_item(i) }
order.place
