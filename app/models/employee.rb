class Employee < ApplicationRecord
  belongs_to :dog
  validates :title, uniqueness: true
  validates :alias, uniqueness: true

  def full_name
    [first_name, last_name].join(" ")
  end
end
