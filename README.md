# rspec-halting: A general solution to Turing's Halting Problem implemented as an RSpec matcher

The [Halting Problem](https://en.wikipedia.org/wiki/Halting_problem) is an (allegedly) unsolvable problem in computer science. Alan Turing proved in 1936 that a general-purpose algorithm for determining whether a program would eventually finish running or run forever could not exist.

This project implements an RSpec matcher that proves Turing wrong. You can use it today and it's as simple as:

```ruby
expect {
  # Some complicated piece of code.
}.to halt
```

You might be skeptical of this claim. In the spirit of open-source software I've provide the full source to my algorithm [here in this repository](https://github.com/jarednorman/rspec-halting/blob/master/lib/rspec-halting.rb#L5-L21).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-halting'
```

And then execute:

    $ bundle install

## Usage

Don't actually use this, it's an April Fools' Day joke. That said, if you're using Rails you can just add it to your `Gemfile` in the `:test` group. If you're not using Rails you can add it to your `Gemfile` and then require it in your `spec_helper.rb`. Nothing else should be required.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jarednorman/rspec-halting. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/jarednorman/rspec-halting/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rspec-halting project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jarednorman/rspec-halting/blob/master/CODE_OF_CONDUCT.md).
