class AddProfileStatusToUser < ActiveRecord::Migration[6.1]
  def change
  	  add_column :users, :profile_status, :integer, :default => 0
  end
end
