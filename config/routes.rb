Rails.application.routes.draw do
  post 'articles/search' => 'articles#search'
  get 'knowledgebase/clear' => 'knowledgebases#clear'
  get 'knowledgebase/:query/clear' => 'knowledgebases#clear_finding_by_query'
  root to: 'articles#index'
end
