class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :workload
      t.integer :workload_unit_id
      t.integer :institution_id
      t.text :description

      t.timestamps
    end
  end
end
