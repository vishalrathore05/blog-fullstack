class Post < ApplicationRecord
    has_many :comments
 validates :title, presence: true, length: { minimum: 3, maximum: 50 }
validates :body, presence: true, length: { minimum: 10, maximum: 300 }
 end
