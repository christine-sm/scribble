class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :updated_at
      t.text :post_body
      t.string :tag #string or array?
    end
  end
end
