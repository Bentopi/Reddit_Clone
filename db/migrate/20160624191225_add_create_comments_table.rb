class AddCreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.timestamps
    end
  end
end
