class Student < ApplicationRecord
    validates :name, presence:{ message:"Name Cannot be Empty" }
    validates :age, inclusion: { in: 1..150, message: 'The age must be between 1 and 150' }
end
