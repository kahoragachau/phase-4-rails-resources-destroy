Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update, :destroy]
  # wecan use resources :birds now because we have all 5 routes methods
  patch "/birds/:id/like", to: "birds#increment_likes"
end
