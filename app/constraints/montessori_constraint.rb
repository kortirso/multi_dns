# frozen_string_literal: true

class MontessoriConstraint < ApplicationConstraint
  DOMAIN = 'montessori-lipetsk.ru'
  LAYOUT = 'montessori'

  def self.matches?(request)
    super(request, DOMAIN)
  end
end
