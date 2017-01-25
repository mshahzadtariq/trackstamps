class AddTrackstampsTo<%= table_name.classify.pluralize -%> < ActiveRecord::Migration
  def change
    <%= migration_data -%>
  end
end
