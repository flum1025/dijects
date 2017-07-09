# Dijects

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dijects'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dijects

## Usage

```ruby
class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end
end

Keys = Dijects.new(Key)
keys = Keys.new([1,2,3,4])
10.times do
  print keys.key.to_s + " "
end
#=> 1 2 3 4 4 3 1 3 4 2 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dijects. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Dijects project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dijects/blob/master/CODE_OF_CONDUCT.md).
