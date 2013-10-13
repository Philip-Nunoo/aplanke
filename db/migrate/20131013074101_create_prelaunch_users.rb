class CreatePrelaunchUsers < ActiveRecord::Migration
  def change
    create_table :prelaunch_users do |t|
      t.string :email
      t.string :telephone_number

      t.timestamps
    end
  end
end
