# distrb

This gem is probability distribution for Ruby.
Currently, this aims to sample from some distributions.

## Installation

```ruby
gem 'distrb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install distrb

## Usage

    > dist = Distrb::Uniform.new
    > dist.sample # => 0.31009806817895547

That's all!

Supported probabiliry distributions: [Distrb::Uniform](lib/distrb/uniform.rb), [Distrb::Normal](lib/distrb/normal.rb), [Distrb::Gamma](lib/distrb/gamma.rb), [Distrb::Beta](lib/distrb/beta.rb)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hiroara/distrb.
