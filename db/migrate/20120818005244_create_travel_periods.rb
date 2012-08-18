class CreateTravelPeriods < ActiveRecord::Migration
  def change
    create_table :travel_periods do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :country_id
      t.integer :travel_type_id
      t.integer :travel_id

      t.timestamps
    end
  end
end
