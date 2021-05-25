class Article < ApplicationRecord
    belongs_to :user
    # 'user' means a single user, an article belong to only 1 user 
    validates :title, presence: true, length: {minimun: 3, maximum: 50}
    validates :description, presence: true, length: {minimun: 10, maximum: 300} 

end