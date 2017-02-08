# Milker

Gem to interface with various creamery API's. Currently only supports Land o'Lakes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'milker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Milker

## Usage

```ruby
client = Milker::LOL.new(token: "xxxxxxxxxxxxxxxx")

client.daily_tests(start_date: "2017-02-02", end_date: "2017-03-02")

client.daily_receipts(start_date: "2017-02-02", end_date: "2017-03-02")
```

`start_date` and `end_date` are optional

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MarceloAlves/Milker.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
