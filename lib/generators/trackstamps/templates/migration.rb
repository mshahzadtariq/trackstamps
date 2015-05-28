class CreateDoorkeeperTables < ActiveRecord::Migration
  def change
    add_column :table, :created_by, :integer
    add_column :table, :updated_by, :integer
  end
end