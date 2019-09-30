class AddIndexToPost < ActiveRecord::Migration[5.2]
  def change
    add_index :posts, :post_id, unique: true
  end
end
