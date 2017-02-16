# require 'net/http'
# require 'rack'

class SurflyCookieTransferController < ApplicationController
  def show
    # def initialize(app = nil)
    #   @app = app
    # end

  #   def call(env)
  #   # @out = {}

  # #   unless(@app.nil?)
  # #     env.keys.each do |key|
  # #     @out += key
  # #   end

  # #   [200, {"Content-Type" => "text/html"}, [@out]]
  # # end

  #     @out = ""

  #     unless(@app.nil?)
  #       response = @app.call(env)[2]
  #       @out += response
  #     end

  #     env.keys.each do |key|
  #       @out += "<li>#{key} = #{env[key]}\n"
  #     end

  #     [200, {"Content-Type" => "text/html"}, ["<p>#{@out}</p>"]]
  #   end

  #   @app = SurflyCookieTransfer.new
  print params

  string = ""

  request.headers.each do |key|
    string += " #{key}\n "
  end

  render plain: string
  end
end




# use Rack::Reloader, 0

# class SurflyCookieTransfer < ApplicationController
#   def initialize(request)
#     @request = @@out
#   end

#   def modify_request
#     proxy_pass = {Host: "https://surfly.com/surfly_cookie_transfer/"}
#     continuation_origin = {X-Continuation-Origin }
#     @@request
#   end

#   def send_request
#   end
# end
