Rails.application.routes.draw do
  get 'endpoints/authenticate/:param', :format => :json, to: 'endpoints#authenticate'
  get 'endpoints/transactions/:param', :format => :json, to: 'endpoints#transactions'
  get 'endpoints/balance/:param', :format => :json, to: 'endpoints#balance'
  post 'endpoints/transaction/:id', :format => :json, to: 'endpoints#transaction'
end
