# frozen_string_literal: true

module Domainable
  extend ActiveSupport::Concern

  SITES_CONSTRAINTS = {
    SredaConstraint::DOMAIN => SredaConstraint::LAYOUT
  }.freeze

  private

  def current_site
    SITES_CONSTRAINTS[request.domain] || (!Rails.env.production? && SITES_CONSTRAINTS[ENV.fetch('DOMAIN', '')])
  end
end
