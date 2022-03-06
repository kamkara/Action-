Rails.application.routes.draw do
  root to:'welcome#index'
  
  get "nouveau-projets", to:"projets#new"
  get "projets-list", to:"projets#index"
  get "edit-projets", to:"projets#edit"
  get "projets", to:"projets#show"
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
  resources :projets, only: %i[update destoy]
  resources :newletters

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
