class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.decimal :month_salary
      t.integer :base_year
      t.date :start_date
      t.integer :employee_id

      t.timestamps
    end
  end
end
