require 'rails/generators/active_record'

class Trackstamps::MigrationGenerator < ::Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  argument :table, :type => :string, :default => "application"
  desc 'Generate migration file required for trackstamps'

  def install
    gsub_file('migration.rb', ':table', table)
    path = File.join('app', 'models', "#{table.singularize}.rb")
    insert_into_file(path, after: "ActiveRecord::Base\n") do
      <<-Ruby
  include Trackstamps
      Ruby
    end
    migration_template 'migration.rb', "db/migrate/add_trackstamps_to_#{table}.rb"
  end

  def self.next_migration_number(dirname)
    ActiveRecord::Generators::Base.next_migration_number(dirname)
  end
end