[![Gem Version](https://img.shields.io/gem/v/cuba-react.svg)](https://rubygems.org/gems/cuba-react)
[![Build Status](https://travis-ci.org/disavowd/cuba-react.svg?branch=master)](https://travis-ci.org/disavowd/cuba-react)
[![Dependency Status](https://gemnasium.com/disavowd/cuba-react.svg)](https://gemnasium.com/disavowd/cuba-react)

# Cuba-React

Easily and seamlessly integrate react with your Cuba project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cuba-react'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cuba-react

## Usage

From the shell, run:
  
    cuba-react generate

This will generate the following files in your project:

    views/layout.mote
    views/home.mote
    js/jquery.js
    js/react.rb

Include Cuba-react in your Cuba instance: 

    # app.rb:
    require 'cuba_react'
    Cuba.plugin CubaReact

...and route a url to 'home.mote':

    # app.rb:
    res.write view("home")

Finally, add the entry point and routing for sprockets to your config.ru:

    # config.ru:
    opal = Opal::Server.new {|s|
      s.append_path 'js'
      s.main = 'app'
    }

    map '/assets' do
      run opal.sprockets
    end

Congratulations - you just integrated React into your Cuba project!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/disavowed/cuba-react.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
