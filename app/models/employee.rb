class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, presence:true 
    validates :alias, allow_blank:true, uniqueness:true
    validates :title, allow_blank:true, uniqueness:true
end
