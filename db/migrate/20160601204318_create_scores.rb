class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :subject_id
      t.string :nocontrol

      t.timestamps null: false
    end
  end
end
