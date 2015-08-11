class CreateTermItems < ActiveRecord::Migration
  def change
    create_table :term_items do |t|
      t.string :name
      t.references :term, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
