class Person < ApplicationRecord
    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Person.create! row.to_hash
        end
    end 

    has_and_belongs_to_many :locations 
    has_and_belongs_to_many :affiliations

    validates :first_name, presence: true
    validates :species, presence: true
    validates :gender, presence: true
end
