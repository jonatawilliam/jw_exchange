Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'exchanges#index'
    get 'convert', to: 'exchanges#convert'
  end
end
