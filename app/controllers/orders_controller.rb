require './app/services/sendgrid/email/email_service'

class OrdersController < ApplicationController

  def initialize
    @email_service = EmailService.new
  end

  def create
    products = params[:products]
    sub_total = Product.find(products).pluck(:price).sum.round(2)
    taxes = ((5 * sub_total) / 100).round(2)
    shipping_cost = 15.00
    total = (sub_total + taxes + shipping_cost).round(2)

    @order = Order.create(
      client_name: params[:client_name],
      delivery_address: params[:delivery_address],
      email: params[:email],
      phone: params[:phone],
      products: products,
      shipping_cost: shipping_cost,
      sub_total: sub_total,
      taxes: taxes,
      total: total
    )
    @email_service.order_notification(
      {
        :taxes => taxes,
        :subtotal => sub_total,
        :shipping => shipping_cost,
        :total => total,
        :client_email => params[:email],
        :client_name => params[:client_name],
        :order_id => @order.id,
        :delivery_address => params[:delivery_address]
      }
    )
    render json: @order
  end
end
