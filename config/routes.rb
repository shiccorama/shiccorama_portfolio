Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  # it means keep all resources as is except show page I will handle it myself
  get "section/[:id]" ,to: "portfolios#show", as: "show_portfolio"
  # first, get portfolio by id, then routes to show action, and name it show_portfolio to be able to use in index.html link
  root to: "pages#home"
  get "about-me", to: "pages#about"
  get "contact-us", to: "pages#contact"
  resources :blogs

  # Note that we replaced every (/) with (#) to declare the root page and also to use aliases for the rest of the pages.

end
