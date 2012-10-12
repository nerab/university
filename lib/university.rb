require 'university/version'
require 'ddd-associations'

module University
  #
  # A list of course offerings at a college, university or other educational outlet.
  #
  class Catalog
    include DDD::Associations

    has_many :courses

    # Construct a new course catalog from an io object
    def initialize(io)
    end

    def find_course_by_year(year)
    end
  end

  #
  # A unit of instruction in one subject, lasting one academic term
  #
  class Course
    include DDD::Associations

    has_one :title
    has_many :lectures
    has_many :tutorials
    has_one :exam
  end

  #
  # A lecture is an oral presentation intended to present information or teach people about a particular subject
  #
  class Lecture
    include DDD::Associations

    # optional, use the course's title if not present
    has_one :title

    has_one :begin
    has_one :end

    has_many :attachments
  end

  #
  # A tutorial is a class that is supplemental to a large lecture course, which gives students the opportunity to discuss the lectures and/or additional readings in smaller groups.
  #
  class Tutorial
    include DDD::Associations

    has_one :begin
    has_one :end

    has_many :attachments
  end

  #
  # An exam is an assessment intended to measure a groups knowledge, gained by taking a course.
  #
  class Exam
    include DDD::Associations

    has_many :slots
  end

  #
  # A slot where a number of students are examined together
  #
  class Slot
    include DDD::Associations

    has_one :begin
    has_one :end

    has_one :task
    has_many :members
  end

  #
  # The task that is used to examine the students
  #
  class Task
    include DDD::Associations

    has_one :title
    has_many :attachments
  end

  #
  # Generic attachment to lecture, tutorial or exam task
  #
  class Attachment
    include DDD::Associations

    has_one :title
    has_one :url
  end
end
