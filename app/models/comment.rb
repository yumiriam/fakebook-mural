class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :comment_likes
  
  attr_accessible :body
  
  validates :body, :presence => true
end
