class Person < ApplicationRecord
    validates :first_name, presence: true
    validates :species, presence: true
    validates :gender, presence: true
end
