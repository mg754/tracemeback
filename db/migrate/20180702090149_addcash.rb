class Addcash < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :level
    remove_column :users, :exp
    remove_column :users, :campaign_progress
    remove_column :users, :drive_refresh_token
    remove_column :users, :drive_access_token
    add_column :users, :cash, :integer, default: 0
  end
end
