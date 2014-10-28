class ChatRoom < Text
  has_many :posts, foreign_key: :parent_id

  scope :have_user_posts_comments, ->user_id do
    rooms, posts, comments = set_arel_tables ChatRoom, Post, Comment
    sql = rooms
      .join(posts, Arel::Nodes::OuterJoin).on(rooms[:id].eq posts[:parent_id])
      .join(comments, Arel::Nodes::OuterJoin)
        .on(posts[:id].eq comments[:parent_id]).join_sources

    includes(children: :children).joins(sql)
      .where(posts[:user_id].eq(user_id)
        .or(comments[:user_id].eq user_id)).distinct
  end

  class << self
    def set_arel_tables *args
      args.map do |model|
        arel_table = model.arel_table
        arel_table.table_alias = model.name.downcase.pluralize
        arel_table
      end
    end

    def unset_arel_table_aliases *args
      args.map{|model| model.arel_table.table_alias = nil}
    end
  end
end