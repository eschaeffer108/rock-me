class AddDescriptionToConcerts < ActiveRecord::Migration[5.2]
  def change
    add_column :concerts, :description, :string, null: false 
  end
end
