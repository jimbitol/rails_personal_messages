Rails.application.routes.draw do
	resources :message
	get "/" => "messages#index"
end
