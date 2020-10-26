class PeopleController < ApplicationController
    def csv_uploader
       @people = Person.all 
    end
    
    def import
        Person.import(params[file])
        redirect_to csv_uploader_people_path, notice: "CSV upload successfully completed"
    end
end
