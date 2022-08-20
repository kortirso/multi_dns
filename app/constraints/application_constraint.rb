# frozen_string_literal: true

class ApplicationConstraint
  def self.matches?(request, domain)
    request.domain == domain || ENV.fetch('DOMAIN', '') == domain
  end
end
