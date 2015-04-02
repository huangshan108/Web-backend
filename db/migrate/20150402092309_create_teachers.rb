class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.integer :snapuser_id
    	t.string :name
      t.timestamps null: false
    end
  end
end
