Rails.application.routes.draw do
  get ':controller/:action/:param', :format => :json
  post 'endpoints/transactions/:id', :format => :json
end
