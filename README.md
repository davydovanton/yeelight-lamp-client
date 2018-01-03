# Yeelight::Lamp::Client

Simple client for Yeelight lamps

Inspired by:
https://github.com/nunows/Yeelight-Wifi

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yeelight-lamp-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yeelight-lamp-client

## Usage

```ruby
require_relative './lib/yeelight'

GREEN = '5701376'
RED = '16713472'

client = Yeelight::Client.new(LAMP_IP_ADDRESS, 55443)
client.get_prop('"ct"') # => JSON with props

lamp = Yeelight::Lamp.new(client)
lamp.toggle_color(GREEN, 2)
sleep 1
lamp.toggle_color(RED, 2)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/davydovanton/yeelight-lamp-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Yeelight::Lamp::Client project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/yeelight-lamp-client/blob/master/CODE_OF_CONDUCT.md).
