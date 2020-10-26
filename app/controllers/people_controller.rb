class PeopleController < ApplicationController
    def csv
       @people = Person.all 
    end    
end
