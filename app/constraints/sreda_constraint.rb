# frozen_string_literal: true

class SredaConstraint < ApplicationConstraint
  DOMAIN = 'sreda-lipetsk.ru'

  def self.matches?(request)
    super(request, DOMAIN)
  end
end
