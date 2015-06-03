# acts_as_snapchat!!

Have you ever wanted Active Record to behave like Snapchat? **It's finally here!**
When a record is more than ten seconds old, it won't appear in any of your queries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acts_as_snapchat'
```

## Usage

To make any model act as snapchat, just include `acts_as_snapchat` in your class definition:

```ruby
class User < ActiveRecord::Base
  acts_as_snapchat

  # ...
end
```

And then stuff will happen:

```ruby
User.create!
User.count # => 1
sleep 10
User.count # => 0
```

If you're a Node.js developer, you may be more comfortable using the alias `acts_as_mongodb`. :trollface:

## Contributing

1. Fork it ( https://github.com/vanruby/acts_as_snapchat/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
