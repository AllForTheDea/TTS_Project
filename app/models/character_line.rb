class CharacterLine < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :project
	has_one :voiceline

	validates :character, presence: true
	validates :line, presence: true

end
