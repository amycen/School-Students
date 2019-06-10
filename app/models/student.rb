class Student < ApplicationRecord
    belongs_to :school
    validates :name, presence: true
    validates :age, presence: true
end
