Rails.application.routes.draw do
  resources :customers, :only => [:create, :update, :destroy, :index, :show]
end
