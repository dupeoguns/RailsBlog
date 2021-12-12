class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :content, presence: true 
    #validates :user_id, presence: true

    before_save { self.email = email.downcase }
end
