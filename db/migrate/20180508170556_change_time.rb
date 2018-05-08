class ChangeTime < ActiveRecord::Migration[5.2]
  def change
    remove_column(:concerts, :show_time, :time)
  end
end
