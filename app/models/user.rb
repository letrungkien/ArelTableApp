class User < ActiveRecord::Base
  has_many :posts, class_name: Post.name, foreign_key: :user_id
  has_many :comments, class_name: Comment.name, foreign_key: :user_id
end