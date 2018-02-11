Rails.application.routes.draw do
  resources :articles
  root to: 'articles#index'
  get "search", to: "search#search"
  get 'search/typeahead/:term' => 'search#typeahead'
end
