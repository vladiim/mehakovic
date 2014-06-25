# accepts a post request with an email param
# logs the email sent
# validates the email
# if valid saves the email and responds with json
# if not valid responds with error through json

require 'sinatra/base'


class SubscriptionApp < Sinatra::Application
  configure :production, :development do
    enable :logging
  end

  get '/' do
  	Getter.new.working
  end

	post '/' do
		# POST /?email=foo"
	  email = params[:email]
		# logger.info "Email posted: #{ email }", Time.now
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