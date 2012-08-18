class CreateCompanyHolidays < ActiveRecord::Migration
  def change
    create_table :company_holidays do |t|
      t.date :day
      t.string :description
      t.integer :country_id

      t.timestamps
    end
  end
end
