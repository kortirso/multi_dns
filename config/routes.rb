# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(SredaConstraint) do
    get '', to: 'sreda/welcome#index', as: :sreda_root
    get 'contacts', to: 'sreda/contacts#index', as: :sreda_contacts
  end

  get 'sitemap.xml', to: 'sitemaps#index', format: :xml
  get 'robots.txt', to: 'robots#index', format: :text

  root 'welcome#index'

  match '*path', to: 'application#not_found', via: :all
end
