# frozen_string_literal: true

class ApplicationConstraint
  def self.matches?(request)
    request.domain == DOMAIN || ENV.fetch('DOMAIN', '') == DOMAIN
  end
end
