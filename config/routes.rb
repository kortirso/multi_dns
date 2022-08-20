# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(SredaConstraint) do
    get '', to: 'sreda/welcome#index'
    get 'contacts', to: 'sreda/contacts#index', as: :sreda_contacts
  end

  root 'welcome#index'
end
