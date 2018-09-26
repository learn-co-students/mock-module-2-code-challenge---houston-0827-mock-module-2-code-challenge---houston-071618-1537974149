class Employee < ApplicationRecord
    belongs_to :dog


    # validates :first_name, length: { minimum: 2 }
    # validates :last_name, length: { minimum: 2 }
    # validates :alias, uniqueness: true
    # validates :title, uniqueness: true
    # validates :title, presence: true
    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # validates :alias, presence: true


end
