class OrderMailer < ActionMailer::Base
  default from: "dom@escapethecity.org"
  
  include ApplicationHelper

  def customer(order)
    @order = order

    mail to: "to@example.org", subject: "Thanks for your order"
  end

  def admin(order)
    @order = order

    mail to: "dom@escapethecity.org", subject: "new order"
  end
end
