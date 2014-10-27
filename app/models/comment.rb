class Comment < Text
  belongs_to :post, foreign_key: :parent_id
end