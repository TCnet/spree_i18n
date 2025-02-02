Spree::Core::Engine.add_routes do
  # from routing-filter gem
  filter :locale

  get '/locales', to: 'locale#index', as: :locales
  get '/mobile_locales', to:  'locale#mobile', as: :mobile_locales
  post '/locale/set', to: 'locale#set', defaults: { format: :json }, as: :set_locale
end
