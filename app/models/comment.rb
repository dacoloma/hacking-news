class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link

  belongs_to :commentable, polymorphic: true, dependent: :delete
  has_many :comments, as: :commentable, dependent: :delete_all

  validates :content, presence: true , length: {maximum: 500}
  validates :user_id, presence: true
  validates :link_id, presence: true
end
