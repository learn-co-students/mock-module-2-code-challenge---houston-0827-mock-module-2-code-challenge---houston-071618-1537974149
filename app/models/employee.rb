class Employee < ApplicationRecord
  belongs_to :dog

  validates :title, uniqueness: { message: 'Duplicate name, please try again.' }
  validates :alias, uniqueness: { message: 'Duplicate alias, please try again.' }
end
