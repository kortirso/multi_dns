# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(SredaConstraint) do
    get '', to: 'sreda/welcome#index', as: :sreda_root
    get 'contacts', to: 'sreda/contacts#index', as: :sreda_contacts

    match '*path', to: 'sreda/application#not_found', via: :all
  end

  root 'welcome#index'
end
