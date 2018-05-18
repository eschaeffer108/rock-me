class ChangeAddDate < ActiveRecord::Migration[5.2]
  def change
    add_column(:concerts, :show_time, :string) 
  end
end
