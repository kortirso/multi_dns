# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(SredaConstraint) do
    get '', to: 'sreda/welcome#index', as: :sreda_root
    get 'contacts', to: 'sreda/contacts#index', as: :sreda_contacts
  end

  get 'sitemap', to: 'sitemaps#index'
  get 'sitemap.xml', to: 'sitemaps#index'
  get 'robots', to: 'robots#index'

  root 'welcome#index'
end
