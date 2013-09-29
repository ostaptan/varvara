# Varvara

Displays your routes, controllers, models, their columns associations and their methods & variables. Provides full stack of hierarchy, dependencies, associations of your project.

## Installation

Add this line to your application's Gemfile:

	group :development do
    	gem 'varvara', git: 'git://github.com/ostaptan/varvara.git'
	end	

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install varvara

## Usage

For current version visit `localhost:3000/varvara` in your app and see full stack of hierarchy, dependencies, associations, routes, controllers, models and configurations of your project.	

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## What to do?

1. Add some stylings and improve the view of pages (add some javascript for models as erd of akira matsuda https://github.com/amatsuda/erd )
2. Add hierarchy of controllers.
3. maybe: Live rails console as in gem 'better_errors'
4. Add displaying some configurations.
5. Add ui possibillity to generate models, controllers, scaffolds.
6. have fun)
