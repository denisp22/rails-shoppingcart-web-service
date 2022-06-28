# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'

class EmailService

  include SendGrid
  @@api_key = ENV['SENDGRID_API_KEY']

  def order_notification(details = {})
    mail = Mail.new
    personalization = Personalization.new
    personalization.add_dynamic_template_data(
      {
        'taxes' => details[:taxes],
        'subtotal' => details[:subtotal],
        'shipping' => details[:shipping],
        'total' => details[:total],
        'delivery_address' => details[:delivery_address],
        'order_id' => details[:order_id]
      }
    )
    personalization.add_to(
      Email.new(email: details[:client_email],
                name: details[:client_name])
    )
    mail.template_id = "d-38ed7d8d0bfe41c5bf31df2821f2eeee"
    mail.add_personalization(personalization)
    mail.from = Email.new(email: 'orders@web-items.com', name: 'New Order')
    sg = SendGrid::API.new(api_key: @@api_key)
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

end
