class User < ApplicationRecord
    has_many :reviews
    has_many :sessions
    has_secure_password
end
