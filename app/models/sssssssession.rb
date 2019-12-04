class Session < ApplicationRecord
	has_many :posts
	accepts_nested_attributes_for :posts
	
	has_one :topic

	belongs_to :user
end
