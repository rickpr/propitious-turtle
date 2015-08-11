class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.references :college, index: true, foreign_key: true
      t.string :acronym
      t.string :name
      t.string :org_code
      t.string :url

      t.timestamps null: false
    end
  end
end
