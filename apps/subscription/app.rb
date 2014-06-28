# accepts a post request with an email param
# logs the email sent
# validates the email
# if valid saves the email and responds with json
# if not valid responds with error through json

require "sinatra"
require "sinatra/base"
require "json"
require "sinatra/sequel"

require_relative "app/database"
require_relative "app/email"
require_relative "app/store"

class SubscriptionApp < Sinatra::Base
  configure :production, :development do
    enable :logging
  end

  get '/' do
  end

	post '/' do
		# POST /?email=foo"
	  email = params[:email]
		logger.info "Email posted: #{ email }; Time: #{ Time.now }"
    content_type :json
    { message: Email.new(email).save }.to_json
	end
end

# setting headers
# get '/foo' do
#   status 418
#   headers \
#     "Allow"   => "BREW, POST, GET, PROPFIND, WHEN",
#     "Refresh" => "Refresh: 20; http://www.ietf.org/rfc/rfc2324.txt"
#   body "I'm a tea pot!"
# end