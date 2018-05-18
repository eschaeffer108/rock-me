class ChangeAddDateBack < ActiveRecord::Migration[5.2]
  def change
    remove_column(:concerts, :show_date, :time)

  end
end
