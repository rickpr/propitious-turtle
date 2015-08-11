class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :department, index: true, foreign_key: true
      t.string :netid
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
