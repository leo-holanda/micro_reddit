class RemoveCollumFromPostAndComment < ActiveRecord::Migration[5.2]
  def change
    remove_index "comment_id", name: "index_comments_on_comment_id"
    remove_index "user_id", name: "index_posts_on_post_id"
    remove_column :posts, :post_id
    remove_column :comments, :comment_id
  end
end
