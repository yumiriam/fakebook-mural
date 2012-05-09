class CreatePostLikes < ActiveRecord::Migration
  def change
    create_table :post_likes do |t|
      t.references :post
      t.references :user

      t.timestamps
    end
    add_index :post_likes, :post_id
    add_index :post_likes, :user_id
  end
end
