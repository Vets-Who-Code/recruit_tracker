class AddCohortToUser < ActiveRecord::Migration[6.1]
  def change
  	add_column :users, :cohort_id, :integer, default: "none"
  end
end
