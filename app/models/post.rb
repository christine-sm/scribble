class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :post_body, presence: true
end
