Rails.application.routes.draw do
  resources :volunteerheres
  get "becomevolunteer" => "volunteerheres#becomevolunteer"
  get "findvolunteers" => "volunteerheres#findvolunteer"
  get "contact" => "volunteerheres#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
