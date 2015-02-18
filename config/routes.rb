EmberHelloWorld::Application.routes.draw do
resources :beers, only: [:index, :destroy, :create, :update], controller: 'beers' do
    resources :recipes, only: [:index, :destroy, :create, :update], controller: 'recipes' do
      resources :ingredients, only: [:index, :destroy, :create, :update], controller: 'ingredients'
    end
  end

  get 'all_recipes' => 'recipes#all_recipes'
  get 'all_ingredients' => 'ingredients#all_ingredients'

  root to: 'beers#index'
end
