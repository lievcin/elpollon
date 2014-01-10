class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :acronym
      t.string :country
      t.timestamps
    end
  end
end
