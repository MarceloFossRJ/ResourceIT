class CreateTrainnings < ActiveRecord::Migration
  def change
    create_table :trainnings do |t|
      t.integer :course_id
      t.integer :employee_id
      t.text :motivation
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
