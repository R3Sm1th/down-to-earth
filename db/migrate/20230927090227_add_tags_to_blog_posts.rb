class AddTagsToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :tags, :string
  end
end
