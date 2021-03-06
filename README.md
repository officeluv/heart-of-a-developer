# HeartOfADeveloper

Prints out a little developer phrase anywhere you want it to:

```
      _____           _____
  ,ad8PPPP88b,     ,d88PPPP8ba,
 d8P"      "Y8b, ,d8P"      "Y8b
dP'           "8a8"           `Yd
8(              "              )8
I8  Slow is smooth. Smooth is  8I
 Yb,          fast.          ,dP
  "8a,                     ,a8"
    "8a,                 ,a8"
      "Yba             adP"
        `Y8a         a8P'
          `88,     ,88'
            "8b   d8"
             "8b d8"
              `888'
```

Good for morale.

[view the complete phrase list.](https://github.com/officeluv/heart-of-a-developer/blob/master/lib/heart_of_a_developer.rb)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heart_of_a_developer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heart_of_a_developer

## Usage

Call `HeartOfADeveloper.speak` to print out a random developer proverb.

Or, call this method in a view file, for example:

```ruby
HeartOfADeveloper.illustration(partition_phrase(sample_phrase))
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/heart_of_a_developer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HeartOfADeveloper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/heart_of_a_developer/blob/master/CODE_OF_CONDUCT.md).
