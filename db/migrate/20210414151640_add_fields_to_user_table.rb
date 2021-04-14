class AddFieldsToUserTable < ActiveRecord::Migration[6.1]

  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :zip_code, :integer
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :branch_of_service, :string
    add_column :users, :year_joined, :integer
    add_column :users, :year_separated, :integer
    add_column :users, :twitter_profile_url, :string
    add_column :users, :linked_in_profile_url, :string
    add_column :users, :github_profile_url, :string
    add_column :users, :prework_link, :string
    add_column :users, :prework_repo_link, :string
  end

end
