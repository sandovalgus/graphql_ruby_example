class Link < ApplicationRecord
	belongs_to :user

	validates :url, presence: { message: "no se acepta url vacias" }, length: { minimum: 5 }
	validates :description, presence: true, length: { minimum: 5 }

	has_many :votes
end
	 