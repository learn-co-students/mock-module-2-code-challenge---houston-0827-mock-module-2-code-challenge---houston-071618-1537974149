class Employee < ApplicationRecord
    belongs_to :dog

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :alias, uniqueness: true
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :office, presence: true
    validates :dog_id, presence: true
end
