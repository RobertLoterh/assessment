Npro::Application.routes.draw do
  resources :numericals
  root to: "numericals#index"
  


end
