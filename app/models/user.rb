class User < ApplicationRecord
	has_many :microposts

	validates :name, presence: true, length: {in: 2..10}
	validates :email, presence: true, uniqueness: {case_sensitive: false}
end
