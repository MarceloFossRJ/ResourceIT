class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :trigram
      t.date :start_date
      t.date :end_date
      t.integer :employee_type_id
      t.integer :company_id
      t.integer :function_id
      t.integer :country_id
      t.integer :area_id
      t.date :birth_date
      t.string :email
      t.string :mobile_phone
      t.string :home_phone

      t.timestamps
    end
  end
end
