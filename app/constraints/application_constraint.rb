# frozen_string_literal: true

class ApplicationConstraint
  def self.matches?(request, domain)
    request.domain == domain || (!Rails.env.production? && ENV.fetch('DOMAIN', '') == domain)
  end
end
