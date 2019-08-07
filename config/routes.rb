Rails.application.routes.draw do
  resources :volunteerheres
  get "becomevolunteer" => "volunteerheres#becomevolunteer"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
