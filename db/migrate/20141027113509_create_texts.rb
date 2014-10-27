class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :classification, null: false
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :parent_id
    end
  end
end
