class Employee < ApplicationRecord
	has_many :dogs
	validates :first_name, presence: true, length: { minimum: 3 }
	validates :last_name, presence: true, length: { minimum: 3 }
	validates :alias, length: { minimum: 3 }
	validates :title, length: { minimum: 3 }
	validates :office, length: { minimum: 3 }
	validates :img_url, length: { minimum: 3 }
end
