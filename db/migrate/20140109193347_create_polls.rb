class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.string :password
      t.integer :admin_id
      t.timestamps
    end
  end
end
