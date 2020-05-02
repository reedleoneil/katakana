Rails.application.routes.draw do
  root 'welcome#index'
  get '/alpha', to: 'welcome#alpha'
  
  get '/adjective', to: 'welcome#adjective'
  get '/adverb', to: 'welcome#adverb'
  get '/auxVerb', to: 'welcome#auxVerb'
  get '/cpNoun', to: 'welcome#cpNoun'
  get '/cpVerb', to: 'welcome#cpVerb'
  get '/noun', to: 'welcome#noun'
  get '/particle', to: 'welcome#particle'
  get '/pronoun', to: 'welcome#pronoun'
  get '/verbConjugation', to: 'welcome#verbConjugation'

  ActiveAdmin.routes(self)
end
