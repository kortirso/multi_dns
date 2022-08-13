# frozen_string_literal: true

class SredaConstraint
  DOMAIN = 'sreda-lipetsk.ru'

  def self.matches?(request)
    request.domain == DOMAIN || ENV.fetch('DOMAIN', '') == DOMAIN
  end
end
