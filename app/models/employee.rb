class Employee < ApplicationRecord
    validates :alias, uniqeness: true
    validates :title, uniqeness: true
    belongs_to :dog
end
