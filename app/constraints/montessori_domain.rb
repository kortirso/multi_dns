# frozen_string_literal: true

class MontessoriDomain
  DOMAIN = 'montessori-lipetsk.ru'

  def self.matches?(request)
    request.domain == DOMAIN || ENV.fetch('DOMAIN', '') == DOMAIN
  end
end
