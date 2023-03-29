class User < ApplicationRecord
    has_many :reviews
    has_many :sessions
    has_secure_password

    validates :username, {presence: true, uniqueness: true, length: { minimum: 3, maximum: 12 }}
    validates :email, {presence: true, uniqueness: true}
    validates :password, presence: true
    
end
