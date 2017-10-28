require "bundler/setup"
require "advanced_errors_rails"
require 'active_record'
RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  # config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end


ActiveRecord::Base.configurations = {'sqlite3' => {:adapter => 'sqlite3', :database => ':memory:'}}
ActiveRecord::Base.establish_connection('sqlite3')

ActiveRecord::Schema.define(:version => 0) do
  create_table :users do |t|
    t.boolean :admin,    :default => false
    t.string  :login,    :default => ''
    t.string  :password, :default => ''
  end
end

class User < ActiveRecord::Base
  validates_presence_of :login, message: "^You really should have a login."
  validates_presence_of :password, message: "can't be blank."
end