class Message < ApplicationRecord
	has_many :entries

	accepts_nested_attributes_for :entries
end
