Rails.application.routes.draw do
	resources :messages
	get "/" => "messages#index"
end
