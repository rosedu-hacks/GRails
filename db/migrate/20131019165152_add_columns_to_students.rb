class AddColumnsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :user_id, :integer
    add_column :students, :father_name, :string
    add_column :students, :mother_name, :string
    add_column :students, :status, :string
  end
end
