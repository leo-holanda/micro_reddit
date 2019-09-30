class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    validates :title, presence: true, length: { maximum: 40, minimum: 1 }
    validates :body, presence: true, length: { maximum: 400, minimum: 1 }
    validates :user_id, presence: true
end