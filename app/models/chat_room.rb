class ChatRoom < Text
  has_many :posts, foreign_key: :parent_id
end