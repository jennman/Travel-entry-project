class User < ApplicationRecord
    has_many :journals , dependent: :destroy
    has_many :locations, through: :journals

    has_secure_password
    
    
    validates :name, presence: true
    validates :username, presence: true
    validates :email, presence: true
    validates :password_digest, presence: true
end
