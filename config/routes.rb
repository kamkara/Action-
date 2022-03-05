Rails.application.routes.draw do
  resources :newletters
  root to:'welcome#index'
  
  get "adherer", to:'membership#index'
  get "members-list", to:"membership#memberslist"
  get "donate", to:'donate#index'
  get "agisons-ensemble", to:"involved#index"
  get "dashboard", to:'dashboard#index'
  get "parametrage", to:'dashboard#home'
  get "mission", to:"abouts#show"
  get "nous-decouvrir", to:"abouts#index"
  get "mission_new", to:"abouts#new"
  get "mission_editer", to:"abouts#edit"
  get "mission_supprimer", to:"abouts#destroy"
  
  resources :works
  resources :abouts, only: %i[create show]

  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    #get '/users/sign_out' => 'devise/sessions#destroy'
  end


  devise_for  :users,
    :path => '',
    :path_names =>
      { :sign_in => 'connexion',
        :sign_out => 'logout',
        :sign_up =>   '', :registration => 'inscription',
        :edit => 'edit'
      }
         
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
