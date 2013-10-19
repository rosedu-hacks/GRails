class AddColumnsToAdministrator < ActiveRecord::Migration
  def change
    add_column :administrators, :faculty, :string
    add_column :administrators, :role, :string
  end
end
