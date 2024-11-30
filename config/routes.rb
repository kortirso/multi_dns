# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(MontessoriConstraint) do
    get '', to: 'montessori/welcome#index', as: :montessori_root
  end

  get 'sitemap', to: 'sitemaps#index'
  get 'sitemap.xml', to: 'sitemaps#index'
  get 'robots', to: 'robots#index'
  get 'apple-touch-icon.png', to: 'icons#index'
  get 'favicon-32x32.png', to: 'icons#index'

  root 'welcome#index'
end
