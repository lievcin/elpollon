class UserPolls < ActiveRecord::Migration
  def change
    create_table :polls_users, :id => false do |t|
      t.belongs_to :poll
      t.belongs_to :user
    end
    add_index :polls_users, ["poll_id", "user_id"]
  end
end
