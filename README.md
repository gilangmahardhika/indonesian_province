# IndonesianProvince

List All Indonesian Provinces

## Installation

Add this line to your application's Gemfile:

    gem 'indonesian_province'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indonesian_province

## Usage

### Rails 3.2.x

	$ rails g indonesian_province

It will creates 5 files

	db/migrate/20131011065521_create_provinces_table.rb
	db/migrate/20131011065522_create_cities_table.rb
	app/model/province.rb
	app/model/city.rb
	lib/tasks/indonesian_province.rake
	doc/indonesian_province_data.json

then

	$ rake db:migrate
	$ rake indonesian_province:dump
 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
