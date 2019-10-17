class Voiceline < ApplicationRecord
	belongs_to :user
	belongs_to :project
	has_one :character_line
end
