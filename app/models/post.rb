class Post < ActiveRecord::Base

  belongs_to :post_category

  validates :title, presence: true
  validates :body, presence: true
  # validates :post_category_id, presence: true

  paginates_per 24

  default_scope -> { order('created_at DESC') }

  scope :published, -> { where('published = ?', true) }
  scope :post_category, -> (post_category) { PostCategory.find_by(name: post_category).posts }
end
