class CreateTermItemTerms < ActiveRecord::Migration
  def change
    create_table :term_item_terms do |t|
      t.references :term, index: true, foreign_key: true
      t.references :term_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
