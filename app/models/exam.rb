class Exam < ActiveRecord::Base
    validates :exam_type, presence: true
    validates_inclusion_of :exam_type, :in => ['admission', 'course', 'diploma']
    validates :grade, presence: true
end
