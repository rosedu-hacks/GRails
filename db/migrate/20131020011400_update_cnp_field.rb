class UpdateCnpField < ActiveRecord::Migration
  def change
    remove_column :contacts, :cnp
    add_column :contacts, :cnp, :string
  end
end
