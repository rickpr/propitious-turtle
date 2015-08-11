class CreateTermItems < ActiveRecord::Migration
  def change
    create_table :term_items do |t|
      t.references :term, index: true, foreign_key: true
      t.string :description
      t.string :hours
      t.string :minimum_grade
      t.string :notes

      t.timestamps null: false
    end
  end
end
