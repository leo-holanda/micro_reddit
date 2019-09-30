class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    validates :title, presence: true, length: { maximum: 40 }
    validates :body, presence: true, length: { maximum: 400 }
    validates :user_id, presence: true, uniqueness: true
end