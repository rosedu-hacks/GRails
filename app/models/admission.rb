class Admission < ActiveRecord::Base
    validates :student_id,  presence: true
    validates :field, presence: true
    validates :specialization, presence: true
    validates :payment_type, presence: true
    validates_inclusion_of :payment_type, :in => [['Budget','budget'], ['Tax', 'tax']]

end
