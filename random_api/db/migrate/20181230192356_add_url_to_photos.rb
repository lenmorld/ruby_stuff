class AddUrlToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :url, :string
  end
end


# self.up
#   #add_column :tablename, :column_name, :column_type
#   add_column :posts, views, :integer
#   add_column :posts, clicks, :integer, default: 0
# end