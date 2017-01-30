Rails.application.routes.draw do
  post 'articles/search' => 'articles#search'
  root to: 'articles#index'
end
