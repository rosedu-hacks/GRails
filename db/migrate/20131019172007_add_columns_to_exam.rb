class AddColumnsToExam < ActiveRecord::Migration
  def change
    add_column :exams, :student_id, :integer
    add_column :exams, :type, :string
    add_column :exams, :course, :string
    add_column :exams, :grade, :integer
    add_column :exams, :payment, :integer
  end
end
