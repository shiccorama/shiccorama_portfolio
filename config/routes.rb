Rails.application.routes.draw do
  resources :portfolios
  root to: "pages#home"
  get "about-me" ,to: "pages#about"
  get "contact-us" ,to: "pages#contact"
  resources :blogs
  
  # Note that we replaced every (/) with (#) to declare the root page and also to use aliases for the rest of the pages.

end
