class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :comment_id
      t.index :comment_id, unique: true
      t.integer :user_id
      t.integer :post_id
      t.text :body

      t.timestamps
    end
  end
end