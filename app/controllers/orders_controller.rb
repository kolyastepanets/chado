class OrdersController < ApplicationController
  def create
    @candy_bar = CandyBar.find(params[:candy_bar_id])
    @order = Order.new(orders_params)

    if @order.save
      redirect_to candy_bar_path(@candy_bar, order: "success")
      OrdersMailer.delay.send_to_admin(@order)
      OrdersMailer.delay.send_to_customer(@order)
    else
      flash[:danger] = @order.errors.full_messages.to_sentence
      redirect_to @candy_bar
    end
  end

  private

  def orders_params
    params.permit(:package_type, :cake, :cup_cake_cream, :cup_cake_mastic, :phone, :email,
                  :gingerbreads, :cake_pops, :zephyr, :jujube, :makaro, :total_price, :name)
  end
end
