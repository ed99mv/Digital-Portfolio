Rails.application.routes.draw do
  get 'about_me/index'
  get 'about_me/edit'
  get 'about_me/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  get '/', to: 'home#index' 
  get '/about', to: 'home#about' 

 
  resources :projects
  resources :skills
  resources :contacts
  resources :user

  namespace :admin do 
    resources :projects
    resources :skills
    resources :about_me
  end
<<<<<<< HEAD

  namespace :api do
    namespace :portfolio do
      resources :projects, defaults: { format: :json }
    end
  end

  resources :projects do
    resources :technologies
  end
=======
>>>>>>> b3bf2522305affd2c9c6247b18cb829527ef89d7
 

#admins-----
  get 'admin/about_me'
  get 'admin/skills'
  get 'admin/projects'

end
