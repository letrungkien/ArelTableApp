class Post < Text
  belongs_to :chat_room, foreign_key: :parent_id
  has_many :comments, foreign_key: :parent_id
end