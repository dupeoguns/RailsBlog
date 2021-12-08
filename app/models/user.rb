class User < ActiveRecord::Base 
    has_many :posts
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
    validates :password_digest, presence: true, uniqueness: { case_sensitive: true }, length: { minimum: 6, maximum: 25 }
    
    before_save { self.email = email.downcase }

end
