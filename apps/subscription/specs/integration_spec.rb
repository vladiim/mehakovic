ENV['RACK_ENV'] = 'test'
require 'sinatra'
require 'rspec'
require 'rack/test'
require_relative '../app'

describe SubscriptionApp do
  include Rack::Test::Methods

  let(:app) { SubscriptionApp.new }

  describe "post / with email" do
    context "invalid email" do
      it "responds with an invalid message" do
        post '/?email=x'
        response = JSON.parse(last_response.body)
        expect(response['message']).to eq "Invalid email"
      end
    end

    context "valid email" do
      it "responds with an email saved message" do
        post '/?email=valid@email.com'
        response = JSON.parse(last_response.body)
        expect(response['message']).to eq "Thanks for subscribing"
      end
    end
  end
end