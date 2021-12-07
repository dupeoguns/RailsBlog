class User < ActiveRecord::Base 
    validates :username, presence: true, uniquenss: true, { case_sensitive: false}, length: {minimum: 3, maximum: 25 }
    validates :email, presence: true, uniquenss: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d-.]+\.[a-z]+\z/i/
    validates :email, presence: true, length: { maximum: 105 },
    uniquenss: { case_sensitive: false },
    format: { with: VALID_EMAIL_REGEX }
    before_save { self.email = email.downcase }
    
end
