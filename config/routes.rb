Lab6::Application.routes.draw do
  get "welcome/index"
  resources :products do
    resources :comments
  end
  root to: "welcome#index"
end
