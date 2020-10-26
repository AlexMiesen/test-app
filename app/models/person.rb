class Person < ApplicationRecord
    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Person.create! row.to_hash
        end
    end 

    def self.search(search)
        if (search)
            first_name = Person.find_by(first_name: search)
            if first_name
                self.where(first_name: first_name)
            else
                Person.all
            end
        else
            Person.all
        end
    end                     

    has_and_belongs_to_many :locations 
    has_and_belongs_to_many :affiliations

    validates :first_name, presence: true
    validates :species, presence: true
    validates :gender, presence: true
end
