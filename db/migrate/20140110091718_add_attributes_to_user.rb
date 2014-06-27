class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :gender, :string
    add_column :users, :location, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end
