class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :cycle	
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
