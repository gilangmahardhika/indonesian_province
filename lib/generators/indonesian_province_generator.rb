require 'rails/generators'
require "rails/generators/active_record"

# This generator creates Province And Cities Migration
class IndonesianProvinceGenerator < ActiveRecord::Generators::Base
	source_root File.expand_path("../templates", __FILE__)
	argument :name, type: :string, default: 'random_name'
	def copy_files
		# Copy migration Files
		migration_template 'provinces_migration.rb', 'db/migrate/create_provinces_table.rb'
		migration_template 'cities_migration.rb', 'db/migrate/create_cities_table.rb'

		# Copy Model Files
		copy_file "province.rb", "app/model/province.rb"
		copy_file "city.rb", "app/model/city.rb"

		# Copy rake task
		copy_file "indonesian_province.rake", "lib/tasks/indonesian_province.rake"

		# Copy Json
		copy_file "indonesian_province_data.json", 'doc/indonesian_province_data.json'
	end

end