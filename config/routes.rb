Rails.application.routes.draw do
    get '/csv-uploader', to: "people#csv"
end
