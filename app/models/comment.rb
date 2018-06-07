class Comment < ApplicationRecord
  validates :body, presence: true
  validates :title, presence: true
  belongs_to :user
  belongs_to :concert
end
