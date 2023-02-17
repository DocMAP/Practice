class AddPositionToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :position, :integer
  end
end
