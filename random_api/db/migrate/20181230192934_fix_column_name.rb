class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :url, :photo_url
  end
end
