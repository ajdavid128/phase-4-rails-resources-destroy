Rails.application.routes.draw do
  resources :birds # we are using all 5 so we can omit -> only: [:index, :show, :create, :update, :destroy]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
