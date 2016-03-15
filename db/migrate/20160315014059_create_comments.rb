class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.datetime :updated_at
      t.text :comment_body
      t.integer :post_id
    end
  end
end

# * Comment (one post has many comments; comments dependent on posts)
#   * updated_at
#   * body_comment
#   * post_id
