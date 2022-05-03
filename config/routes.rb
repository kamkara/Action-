Rails.application.routes.draw do
  
  root to:'welcome#index'

  #### Accounted #####
  get "connecting", to:'accounted#signInMember'
  get "adhesion-partner", to:'accounted#signUpMember'
  get "admin-accounted", to:'accounted#signUpAdmin'

  
  # CAMPAGNES
  get "nouvelle-campagnes", to:"campagnes#new"
  get "campagnes-list", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"
  #get "campagnes", to:"campagnes#show"
  
  #PROJETS
  get "nouveau-projets", to:"projets#new"
  get "projets-list", to:"projets#index"
  get "edit-projets", to:"projets#edit"
  get "projets", to:"projets#show"
  
  # MEMVERSHIP
  get "adherer", to:'membership#index'
  get "members-list", to:"membership#memberslist"
  get "beaction", to:"membership#beaction"

  #DASHBOARD
  get "dashboard", to:'dashboard#index'
  get "parametrage", to:'dashboard#home'
  get "donate", to:'donate#index'
  get "agisons-ensemble", to:"involved#index"
  
  #ABOUTS
  get "mission", to:"abouts#show"
  get "nous-decouvrir", to:"abouts#index"
  get "mission_new", to:"abouts#new"
  get "mission_editer", to:"abouts#edit"
  get "mission_supprimer", to:"abouts#destroy"
  
  resources :campagnes#, only: %i[ show update destroy]
  resources :abouts, only: %i[create show]
  resources :projets, only: %i[update destoy]
  resources :works
  resources :newletters

  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    #get '/users/sign_out' => 'devise/sessions#destroy'
  end


  devise_for  :users,
    :path => '',
    :path_names =>
      { :sign_in => 'connected',
        :sign_out => 'logout',
        :sign_up =>   '', :registration => 'adhesion',
        :edit => 'edit'
      }
         
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
