Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get '/authenticate/*jwt', to: 'authenticate#show', constraints: { jwt: /.*/ }
      put '/messages/*handle', to: 'messages#new'
      resources :loads
    end
  end
end
