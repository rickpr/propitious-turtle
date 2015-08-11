class CreateCourseTermItems < ActiveRecord::Migration
  def change
    create_table :course_term_items do |t|
      t.references :course, index: true, foreign_key: true
      t.references :term_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
