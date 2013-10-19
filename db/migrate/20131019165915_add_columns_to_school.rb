class AddColumnsToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :student_id, :integer
    add_column :schools, :name, :string
    add_column :schools, :country, :string
    add_column :schools, :city, :string
    add_column :schools, :field, :string
    add_column :schools, :specialization, :string

  end
end
