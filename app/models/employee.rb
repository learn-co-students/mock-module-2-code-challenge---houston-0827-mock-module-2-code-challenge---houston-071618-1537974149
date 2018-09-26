class Employee < ApplicationRecord
    belongs_to :dog
    # No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
    # validates :alias, uniqueness: true
    # validates :title, uniqueness: true
end
