class AddTrackstampsTo<%= classify(table_name) -%> < ActiveRecord::Migration
  def change
    <%= migration_data -%>
  end
end
