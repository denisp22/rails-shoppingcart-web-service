require 'aws-sdk-s3'
# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'

class ProductsController < ApplicationController

  include SendGrid

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def send_email

    from = Email.new(email: 'info@web-items.com')
    to = Email.new(email: 'luis.dev.master@gmail.com')
    subject = 'Hola Luis!'
    content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end

=begin
  def upload
    bucket_name = 'web-items-media'
    object_key = 'my-file.txt'
    object_content = 'This is the content of my-file.txt.'
    region = 'us-east-2'
    s3_client = Aws::S3::Client.new(region: region)

    response = s3_client.put_object(
        bucket: bucket_name,
        key: object_key,
        body: object_content
    )
    if response.etag
      return true
    else
      return false
    end
    rescue StandardError => e
      puts "Error uploading object: #{e.message}"
      return false
    end
=end

end