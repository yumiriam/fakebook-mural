class CreateCommentLikes < ActiveRecord::Migration
  def change
    create_table :comment_likes do |t|
      t.references :comment
      t.references :user

      t.timestamps
    end
    add_index :comment_likes, :comment_id
    add_index :comment_likes, :user_id
  end
end
