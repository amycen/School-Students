class Support < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :reason, presence: true
end
