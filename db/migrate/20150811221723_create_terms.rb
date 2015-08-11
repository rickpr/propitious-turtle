class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.references :degree_plan, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
