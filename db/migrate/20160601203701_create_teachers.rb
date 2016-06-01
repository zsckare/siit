class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :lastname
      t.string :user
      t.string :password

      t.timestamps null: false
    end
  end
end
