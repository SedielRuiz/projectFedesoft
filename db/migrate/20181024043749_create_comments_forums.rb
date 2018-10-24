class CreateCommentsForums < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_forums do |t|
      t.string :comment_forum

      #foranea usuario
      t.integer :user_id
      t.references :user_id, index: true
      #foranea foro
      t.integer :forum_id
      t.references :forum_id, index: true

      t.timestamps
    end
    add_foreign_key :comments_forums, :users
    add_foreign_key :comments_forums, :forums
  end
end
