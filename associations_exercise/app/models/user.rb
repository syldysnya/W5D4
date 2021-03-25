class User < ApplicationRecord
    validates :name, presence: true
    
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
    
    has_many :courses,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :Course

    #build first "has_many - belongs_to" pair between tables: needs to reach and middle
    has_many :enrolled_classes,
        through: :enrollments, #table in-between
        source: :course #method name from table in through
end