class CreateCommentsForums < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_forums do |t|
      t.string :comment_forum

      #foranea usuario
      t.references :user, index: true
      #foranea foro
      t.references :forum, index: true

      t.timestamps
    end
    add_foreign_key :comments_forums, :users
    add_foreign_key :comments_forums, :forums
  end
end
