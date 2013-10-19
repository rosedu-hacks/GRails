class AddColumnsToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :user_id, :integer
    add_column :contacts, :type, :string
    add_column :contacts, :cnp, :integer
    add_column :contacts, :serie, :integer
    add_column :contacts, :number, :integer
    add_column :contacts, :country, :string
    add_column :contacts, :region, :string
    add_column :contacts, :city, :string
    add_column :contacts, :ethnicity, :string
    add_column :contacts, :citizenship, :string
    add_column :contacts, :address, :string
    add_column :contacts, :telephone, :string
  end
end
