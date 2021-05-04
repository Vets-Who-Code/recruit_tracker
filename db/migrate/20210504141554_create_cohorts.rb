class CreateCohorts < ActiveRecord::Migration[6.1]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
