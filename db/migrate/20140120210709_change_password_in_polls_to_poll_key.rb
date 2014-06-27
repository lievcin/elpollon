class ChangePasswordInPollsToPollKey < ActiveRecord::Migration
  def up
    add_column :polls, :group_key, :string
    Poll.all.each{|p| p.group_key = p.password; p.save!}
    remove_column :polls, :password
  end

  def down
    add_column :polls, :password, :string
    Poll.all.each{|p| p.password = p.group_key; p.save!}
    remove_column :polls, :group_key
  end
end


