# Hermes::Scraper
[![Build Status](https://travis-ci.org/TheBookPeople/hermes-scraper.svg)](https://travis-ci.org/TheBookPeople/hermes-scraper)
[![Code Climate](https://codeclimate.com/github/TheBookPeople/hermes-scraper/badges/gpa.svg)](https://codeclimate.com/github/TheBookPeople/hermes-scraper)
[![Test Coverage](https://codeclimate.com/github/TheBookPeople/hermes-scraper/badges/coverage.svg)](https://codeclimate.com/github/TheBookPeople/hermes-scraper)
[![Gem Version](https://badge.fury.io/rb/hermes-scraper.svg)](http://badge.fury.io/rb/hermes-scraper)

Scrapes parcel tracking data from the Hermes website.
A more advanced but discontinued project exists at https://github.com/eljojo/polar_express

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hermes-scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hermes-scraper

## Usage

```ruby
require 'hermes/scraper'

Hermes::Scraper.new('barcode here')
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TheBookPeople/hermes-scraper.

## License

Copyright 2016 The Book People Ltd.
Licensed under the GNU General Public License, version 3. See LICENSE.TXT.
