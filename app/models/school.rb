class School < ApplicationRecord
    has_many :students
    def self.search(search)
        schools =  School.all
        if search && !search.empty?
          schools =  School.where('lower(name) LIKE ?', "%#{search.downcase}%")
        end
        schools
      end
    
end
