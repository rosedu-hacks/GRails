class Exam < ActiveRecord::Base
    validates :type, presence: true
    validates_inclusion_of :type, :in => [['Admission','admission'], ['Course', 'course'], ['Diploma', 'diploma']]
    validates :grade, presence: true
end
