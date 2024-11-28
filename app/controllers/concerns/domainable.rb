# frozen_string_literal: true

module Domainable
  extend ActiveSupport::Concern

  SITES_CONSTRAINTS = {
    MontessoriConstraint::DOMAIN => MontessoriConstraint::LAYOUT
  }.freeze

  private

  def current_site
    value = SITES_CONSTRAINTS[request.domain]
    return value if Rails.env.production?

    value || SITES_CONSTRAINTS[ENV.fetch('DOMAIN', nil)]
  end
end
