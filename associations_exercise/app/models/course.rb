class Course < ApplicationRecord
    validates :name, presence: true

    belongs_to :professor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User

    has_many :students,
        through: :enrollments,
        source: :user
end


#  class User < ApplicationRecord
#   has_many :likes,
#   	primary_key: :id,
#   	foreign_key: :liker_id,
#   	class_name: :Like
# end

# class User < ApplicationRecord
#   has_many :liked_songs,
#       through: :likes,
#       source: :song
# end

# class Song < ApplicationRecord
#   belongs_to :author,
#   	primary_key: :id,
#   	foreign_key: :author_id,
#   	class_name: :User
# end

# validates :some_column, presence: true
#   similar to null: false
# validates :other_column, uniqueness: true
#   similar to unique: true