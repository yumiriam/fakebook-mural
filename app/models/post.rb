class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_likes
  
  attr_accessible :content
  
  validates :content, :presence => true
end
