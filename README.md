# Typeform Ruby Client

The Typeform Client for Ruby. Provides both resource oriented interfaces and API clients for Typeform services.

## Links of Interest

* [Typeform API Docs](https://developer.typeform.com/)
* [Changelog](https://github.com/itdaa-dev/typeform-ruby-client/blob/main/CHANGELOG.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'typeform-ruby-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install typeform-ruby-client

## Usage

### Configuration

Before making requests, you must configure the gem with your key
and secret. If you are using Rails, you can do this in an initializer.

```ruby
Typeform.configure do |config|
  config.typeform_token = "YOUR PERSONAL TOKEN"
  config.timeout = 10
  config.debug = false
end
```

### API
```ruby
* Typeform::Api::Form.retrieve_forms
* Typeform::Api::Form.retrieve_form(form_id)
* Typeform::Api::Response.retrieve_responses(form_id)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/itdaa-dev/typeform-ruby-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Typeform::Ruby::Client project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/itdaa-dev/typeform-ruby-client/blob/main/CODE_OF_CONDUCT.md).
