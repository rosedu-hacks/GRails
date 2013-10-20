class Student < ActiveRecord::Base
    validates :user_id, presence: true
    validates :father_name, presence: true, length: { maximum: 50 }
    validates :mother_name, presence: true, length: { maximum: 50 }
    validates :status, presence: true
    validates_inclusion_of :status, :in => ['new', 'accepted', 'enrolled', 'alumni', 'rejected']

    belongs_to :user
    has_many :schools
    has_many :diplomas
    has_many :admissions
    has_many :exams
end
