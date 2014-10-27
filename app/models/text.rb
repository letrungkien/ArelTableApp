class Text < ActiveRecord::Base
  belongs_to :author, class_name: User.name, foreign_key: :user_id
  belongs_to :parent, class_name: Text.name

  has_many :children, class_name: Text.name, foreign_key: :parent_id,
    dependent: :destroy

  self.inheritance_column = :classification
end