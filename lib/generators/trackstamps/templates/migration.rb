class AddTrackstampsTo<%= table_name -%> < ActiveRecord::Migration
  def change
    <%= migration_data -%>
  end
end