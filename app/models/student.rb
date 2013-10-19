class Student < ActiveRecord::Base
    validates :father_name, presence: true, length: { maximum: 50 }
    validates :mother_name, presence: true, length: { maximum: 50 }
    validates :status, presence: true
    validates_inclusion_of :status, :in => [['New', 'new'], ['Accepted', 'accepted'],
        ['Enrolled', 'enrolled'], ['Alumni', 'alumni'], ['Rejected', 'rejected']]

    belongs_to :user
    has_many :schools
    has_many :diplomas
    has_many :admissions
end
