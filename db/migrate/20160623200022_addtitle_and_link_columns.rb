class AddtitleAndLinkColumns < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :link, :string
  end
end
