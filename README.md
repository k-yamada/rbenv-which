# Rbenv::Which

rbenv helper script to switch the version of ruby at runtime.

## Installation

Add this line to your application's Gemfile:

    gem 'rbenv-which'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbenv-which

## Usage

    # run script by ruby 1.9.3-p448
    `#{Rbenv.which_ruby("1.9.3-p448") test_script.rb`

    # run script by jruby-1.7.4
    `#{Rbenv.which_ruby("jruby-1.7.4") test_script.rb`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
