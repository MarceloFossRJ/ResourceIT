class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :name
      t.text :description
      t.integer :employee_id

      t.timestamps
    end
  end
end
