class CreateAssigneds < ActiveRecord::Migration
  def change
    create_table :assigneds do |t|
      t.integer :subject_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
