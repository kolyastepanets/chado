class OrdersMailer < ActionMailer::Base
  def send_to_customer(order)
    @order = order
    mail to: @order.email, subject: "Заказ №#{order.id} Candy Bar", from: "Chado - студия праздников <office@chado.dp.ua>"
  end

  def send_to_admin(order)
    @order = order
    mail to: "office@chado.dp.ua", subject: "У вас новый заказ №#{@order.id} Candy Bar", from: "office@chado.dp.ua"
  end
end
