class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :text
      t.integer :blog_post_id

      t.timestamps
    end
  end
end
