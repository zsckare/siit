class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.string :nocontrol
      t.string :password

      t.timestamps null: false
    end
  end
end
