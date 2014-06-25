require 'rspec'
require_relative '../app/email'

# logs the email sent
# validates the email
# if valid saves the email and responds with json
# if not valid responds with error through json

module Email
	module Logger
		def self.log(email); end
	end
end

describe Email do
  let(:valid) { "valid@email.com" }
	let(:email) { Email.new(valid) }

  describe "#initialize" do
  	it "stores the email locally" do
  		expect(email.value).to eq valid
  	end

  	it "logs the email" do
  		message = "Email posted::: #{ valid }"
  		expect(Email::Logger).to receive(:log).with(message)
  	end
  end
end