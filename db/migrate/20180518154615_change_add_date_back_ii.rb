class ChangeAddDateBackIi < ActiveRecord::Migration[5.2]
  def change
    add_column(:concerts, :show_date, :string) 
  end
end
