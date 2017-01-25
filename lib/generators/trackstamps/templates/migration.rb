class AddTrackstampsTo<%= table_name.classify -%> < ActiveRecord::Migration
  def change
    <%= migration_data -%>
  end
end
