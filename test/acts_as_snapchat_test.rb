require "minitest/autorun"
require "rails"
require "rails/all"
require "acts_as_snapchat"

class Application < ::Rails::Application; end
Rails.application.initialize!

connection_pool = ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: ":memory:"
)

connection = connection_pool.connection

connection.create_table :users do |t|
  t.timestamps null: false
end

class ActsAsSnapchatTest < MiniTest::Test

  class User < ActiveRecord::Base
    acts_as_snapchat
    acts_as_mongodb # check that method is defined
  end

  def test_acting_as_snapchat
    User.create!
    assert(User.count, 1)
    User.first.update!(created_at: 11.seconds.ago)
    assert(User.count, 0)
  end

end
