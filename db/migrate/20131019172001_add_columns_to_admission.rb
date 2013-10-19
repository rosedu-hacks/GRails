class AddColumnsToAdmission < ActiveRecord::Migration
  def change
    add_column :admissions, :student_id, :integer
    add_column :admissions, :field, :string
    add_column :admissions, :specialization, :string
    add_column :admissions, :payment_type, :string
  end
end
