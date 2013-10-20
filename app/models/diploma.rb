class Diploma < ActiveRecord::Base
    validates :student_id, presence: true
    validates :diploma_type, presence: true
    validates :date, presence: true
    validates :serie, presence: true, length: {maximum: 12, minimum: 5}
    validates :average, presence: true
end
