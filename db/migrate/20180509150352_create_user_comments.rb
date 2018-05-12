class CreateUserComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :concert_id, null: false
      t.string :user_id, null: false
      t.string :body, null: false 
    end
  end
end
