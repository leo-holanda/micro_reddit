class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :user_id, presence: true, uniqueness: true
    validates :post_id, presence: true, uniqueness: true
    validates :body, presence: true, length: { maximum: 400 }
end
