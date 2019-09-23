class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.belongs_to :student, foreign_key: true
      t.integer :course_id
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
