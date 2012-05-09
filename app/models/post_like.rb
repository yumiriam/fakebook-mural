class PostLike < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  # attr_accessible :title, :body

  validates :post_id, :uniqueness => {:scope => :user_id}
end
