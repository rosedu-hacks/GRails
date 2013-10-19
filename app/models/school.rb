class School < ActiveRecord::Base
    validates :student_id, presence: true
    validates :name, presence: true
    validates :country, presence: true
    validates :city, presence: true
    validates :specialization, presence: true
    validates :field, presence: true

    belongs_to :student
end
