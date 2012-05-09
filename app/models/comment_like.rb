class CommentLike < ActiveRecord::Base
  belongs_to :comment
  belongs_to :user
  # attr_accessible :title, :body
  
 validates :comment_id, :uniqueness => {:scope => :user_id}
end
