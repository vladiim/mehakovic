class Email
  include Logger

	attr_reader :value
	def initialize(email)
		@value = email
		
	end
end