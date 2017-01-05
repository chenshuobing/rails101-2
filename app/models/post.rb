class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :content, presence: true
  scope :resent, -> { order("created_at DESC")}
end
