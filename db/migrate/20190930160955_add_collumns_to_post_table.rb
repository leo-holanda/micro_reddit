class AddCollumnsToPostTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :interger
    add_column :posts, :title, :string 
    add_column :posts, :body, :text
  end
end
