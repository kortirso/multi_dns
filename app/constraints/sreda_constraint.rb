# frozen_string_literal: true

class SredaConstraint < ApplicationConstraint
  DOMAIN = 'sreda-lipetsk.ru'
  LAYOUT = 'sreda'

  def self.matches?(request)
    super(request, DOMAIN)
  end
end
