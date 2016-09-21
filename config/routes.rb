Rails.application.routes.draw do
  # Consumir endpoints/authenticate/<phone>.json?pass=<pass>
  get ':controller/:action/:param', :format => :json
  #post 'endpoints/transactions/:id', :format => :json
end
