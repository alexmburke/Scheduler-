class CreateMeetingDates < ActiveRecord::Migration
  def change
    create_table :meeting_dates do |t|
	  t.string :date
      t.string :book	

      t.timestamps null: false
    end
  end
end
