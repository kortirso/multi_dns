# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(MontessoriDomain) do
    get '', to: 'montessori/welcome#index'
  end

  root 'welcome#index'
end
