class Project < ApplicationRecord

	has_many :users
	has_many :character_lines
	has_many :voicelines

	
end
