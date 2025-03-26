Rails.application.routes.draw do
  get 'home', to: "pages#home"
  # this line tells you if we type home it take us to pages home
  get 'about', to:  "pages#about"
  # this line tells you if we type home it take us to pages about - where about is the word we use in creating controller 

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "pages#home"
  # root "pages#home" says it will take to pages home when you load localhost:3000
end
