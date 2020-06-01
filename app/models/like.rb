class Like < ApplicationRecord
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}

  default_scope -> { order(created_at: :desc) }
end
