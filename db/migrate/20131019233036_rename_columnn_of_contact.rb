class RenameColumnnOfContact < ActiveRecord::Migration
  def change
    rename_column :contacts, :type, :id_type
    rename_column :diplomas, :type, :diploma_type
    rename_column :exams, :type, :exam_type
  end
end
