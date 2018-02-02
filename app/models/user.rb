class User < ApplicationRecord
  has_many :links
  has_many :comments
  validates :name, presence:true , length: {maximum: 30}
end
