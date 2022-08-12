class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 5..100 }
  validates :body, presence: true, length: { in: 1..500 }
end
