class AddTimeBack < ActiveRecord::Migration[5.2]
  def change
    add_column :concerts, :show_time, :string, null: false
  end
end
