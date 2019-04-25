class Order

  attr_reader :items, :place_at, :time_spentsent_on_sending_email

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    @place_at = Time.now
    thr = Thread.new do
      Pony.mail(:to => StoreApplication::Admin.email,
        :from => "My Store <>",
        :via => :smtp, :via_options => {
          address: 'smtp.gmail.com',
          port: '587',
          user_name: ,
          password: ,
          authentication: :plain,
          domain: "mail.google.com"},
        subject: "New order has been placed",
        body: "Please check back you admin page to see it!")
    end
    while(thr.alive?)
      puts "."
      sleep 0.5
    end
    sent_email_at = Time.now
    @time_spentsent_on_sending_email = sent_email_at - @place_at
  end
end
