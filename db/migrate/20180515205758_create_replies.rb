class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :comment_id, null: false
      t.string :body, null: false 
    end
  end
end
