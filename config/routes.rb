Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount ActionCable.server => "/cable"
    post "/create_message", to: "message#create_message"
    get "/message_history", to: "message#message_history"
    post "/connect", to: "session#create"


end
