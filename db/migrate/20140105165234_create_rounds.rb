class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :leg
      t.integer :cup_id
      t.text   :description
      t.string :round_type
      t.timestamps
    end
  end
end
