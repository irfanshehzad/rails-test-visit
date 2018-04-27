Rails.application.routes.draw do
  root 'welcome#index'
  resources :users ,only: :index do
  	collection do
  	  get :import
  	  post :read_csv
    end
  end
end
