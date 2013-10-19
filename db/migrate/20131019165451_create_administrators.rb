class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
