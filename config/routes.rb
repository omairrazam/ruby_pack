Rails.application.routes.draw do
  devise_for :users
  mount ChatEngine::Engine, :at => "/"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
