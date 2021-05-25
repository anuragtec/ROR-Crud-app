class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    # 'Articles' because one user can create or contain multiple article
    validates :username, presence: true,
                     uniqueness: { case_sensitive: false },
                     length: {minimum: 3, maximum: 25}
    
# This is a Constant  
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
                 
    validates :email, presence: true,
                     uniqueness: { case_sensitive: false },
                     length: { maximum: 125 },
                     format: { with: VALID_EMAIL_REGEX }

    has_secure_password
end 