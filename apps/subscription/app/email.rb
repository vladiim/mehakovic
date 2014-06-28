class Email
  REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

	attr_reader :value
	def initialize(email)
    @value = email
  end

  def valid?
    match = REGEX.match(value)
    return match[0] == value if match
    false
  end

  def save(store = Store.new)
    return store.save(value) if valid?
    "Invalid email"
  end
end