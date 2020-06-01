class Post < ApplicationRecord

validates :content, {presence: true, length: {maximum: 140}}
validates :user_id, {presence: true}

default_scope -> { order(created_at: :desc) }

has_many :likes, dependent: :destroy

def user
  return User.find_by(id: self.user_id)
end

end
