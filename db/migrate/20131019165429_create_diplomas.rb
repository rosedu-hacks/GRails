class CreateDiplomas < ActiveRecord::Migration
  def change
    create_table :diplomas do |t|

      t.timestamps
    end
  end
end
