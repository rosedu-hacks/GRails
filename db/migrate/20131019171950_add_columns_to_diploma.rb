class AddColumnsToDiploma < ActiveRecord::Migration
  def change
    add_column :diplomas, :student_id, :integer
    add_column :diplomas, :type, :string
    add_column :diplomas, :date, :date
    add_column :diplomas, :serie, :string
    add_column :diplomas, :number, :integer
    add_column :diplomas, :average, :integer
  end
end
