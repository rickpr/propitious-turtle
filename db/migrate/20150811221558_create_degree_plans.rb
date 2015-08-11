class CreateDegreePlans < ActiveRecord::Migration
  def change
    create_table :degree_plans do |t|
      t.references :department, index: true, foreign_key: true
      t.string :name
      t.string :kind

      t.timestamps null: false
    end
  end
end
