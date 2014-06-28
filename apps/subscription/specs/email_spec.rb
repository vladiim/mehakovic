require 'rspec'
require_relative '../app/email'

describe Email do
  let(:valid)   { "valid@email.com" }
  let(:invalid) { "invalid@email" }
	let(:email)   { Email.new(valid) }

  describe "#initialize" do
  	it "stores the email locally" do
  		expect(email.value).to eq valid
  	end

    context "valid email" do
    	it "is valid" do
    		expect(email.valid?).to eq true
    	end
    end

    context "invalid email" do
      it "is invalid" do
        emails = %w(**@jj.com blah@--. yolkjlkj.com kjkj@lkj)
        emails.each do |e|
          email = Email.new(e)
          expect(email.valid?).to eq false
        end
      end
    end
  end

  describe "#save" do
    let(:store) { double("Store", save: "SAVED") }

    context "valid email" do
      it "passes the email to Store" do
        expect(email.save(store)).to eql "SAVED"
      end
    end

    context "invalid email" do
      it "passes the email to Store" do
        email = Email.new(invalid)
        expect(email.save(store)).to eql "Invalid email"
      end
    end
  end
end