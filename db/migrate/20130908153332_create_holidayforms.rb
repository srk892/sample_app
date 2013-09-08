class CreateHolidayforms < ActiveRecord::Migration
  def change
    create_table :holidayforms do |t|
      t.string :name
      t.date :start
      t.date :end
      t.integer :budget

      t.timestamps
    end
  end
end
