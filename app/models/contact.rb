class Contact < ActiveRecord::Base
    validates :user_id, presence: true
    validates :id_type, presence: true
    validates_inclusion_of :id_type, :in => ['ci', 'bi']
    validates :cnp, presence: true, length: {maximum: 13 , minimum: 13}
    validates :country, presence: true
    validates :city, presence: true
    validates :ethnicity, presence: true
    validates :citizenship, presence: true
    validates :address, presence: true
    validates :telephone, presence: true, length: {maximum: 12, minimum: 9}

    belongs_to :user
end
