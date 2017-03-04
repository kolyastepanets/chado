class MailerController < ApplicationController

  def preview_welcome()
    @order = Order.last
    render :file => 'orders_mailer/send_to_customer'
  end

end
