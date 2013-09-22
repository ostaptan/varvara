# Varvara

### Gem is still developing. It's not ready for usage.

Displays your routes, classes, modules and thier methods & variables. Provides full stack of hierarcy, dependencies, associations and configurations of your project.

## Installation

Add this line to your application's Gemfile:

    gem 'varvara'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install varvara

## Usage

Create file initializers/varvara.rb and paste the code:

	require 'varvara'

	Varvara.launch
	
After running your server a html file report.rb will be generated. Open it to view some information.	

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
