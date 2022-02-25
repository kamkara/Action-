Rails.application.routes.draw do
  
  root to:'welcome#index'



  devise_scope :user do
    #get 'users/sessions'        => 'devise/sessions#new',         :as => :new_user_registration
    #get 'users/regsitrations'   => 'devise/registrations#new',    :as => :new_user_registration
    get 'profile/edit'          => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'        => 'devise/registrations#cancel', :as => :cancel_user_registration
    #get '/users/sign_out'       => 'devise/sessions#destroy',     :as => :destroy
  end


  devise_for  :users,
    :path => '',
    :path_names =>{ 
      :sign_in =>  'connexion',
      :sign_out =>      'logout',
      :sign_up =>       '',
      :registration =>  'inscription',
      :edit =>          'edit'
    }
         
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
