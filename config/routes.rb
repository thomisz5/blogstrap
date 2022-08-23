Rails.application.routes.draw do
  root 'articles#index' #definindo tela inicial
  get '/articles', to: 'articles#index' #indo pro controler articles na action index
end
