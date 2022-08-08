# frozen_string_literal: true

Rails.application.routes.draw do
  constraints(MontessoriDomain) do
    root 'montessori/welcome#index'
  end
end
