class AddTrackstampsTo<%= table_name.classify.pluralize -%> < ActiveRecord::Migration<%= [Rails::VERSION::STRING.to_f] if Rails::VERSION::MAJOR >= 5 -%>

  def change
<%= migration_data -%>
  end
end
