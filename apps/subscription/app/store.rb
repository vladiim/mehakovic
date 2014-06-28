# http://sequel.jeremyevans.net/rdoc/files/doc/opening_databases_rdoc.html
# http://sequel.jeremyevans.net/rdoc/files/doc/security_rdoc.html

class Store

  attr_reader :table
  def initialize
    database = Sequel.connect('sqlite://subscription.db')
    @table   = database[:users]
  end

  def save(email)
    table.insert(email: email, created_at: Time.now)
  end
end