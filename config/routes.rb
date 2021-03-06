Rails.application.routes.draw do
  root 'endpoints#index'
  get 'endpoints/authenticate/:param', :format => :json, to: 'endpoints#authenticate'
  get 'endpoints/transactions/:param', :format => :json, to: 'endpoints#transactions'
  get 'endpoints/balance/:param', :format => :json, to: 'endpoints#balance'
  put 'endpoints/transaction/:id', to: 'endpoints#transaction'
  get 'endpoints/transaction/:id', to: 'endpoints#transaction'
end
