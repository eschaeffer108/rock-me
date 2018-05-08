class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :artist, null: false 
      t.date :show_date, null: false
      t.time :show_time, null: false
    end
  end
end
