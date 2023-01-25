Rails.application.routes.draw do
  resources :graphs do
    get :data, on: :member
  end
end
