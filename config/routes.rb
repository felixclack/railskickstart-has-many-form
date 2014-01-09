HasManyForm::Application.routes.draw do
  resources :surveys

  root to: 'surveys#new'
end
