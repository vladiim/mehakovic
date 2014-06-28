set :database, 'sqlite://subscription.db'

puts "the users table doesn't exist" if !database.table_exists?('users')

migration "create the users table" do
  database.create_table :users do
    primary_key :id
    text        :email
    timestamp   :created_at, :null => false

    index :email, :unique => true
  end
end