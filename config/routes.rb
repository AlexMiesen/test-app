Rails.application.routes.draw do
    get 'people/csv_uploader', to: "people#csv_uploader"
    
    resources :people do
        collection { post :csv_uploader } 
    end     
end
