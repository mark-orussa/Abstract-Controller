Rails.application.routes.draw do
  root 'abstracts#home', abstract: 'home'
  resources :abstracts, only: [] do
    collection do
      resources :cheeses, :monkeys, module: :abstracts
    end
  end
end
