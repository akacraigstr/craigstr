class AddColumnToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :content, :string
    add_column :posts, :content, :text, null: false
  end
end
