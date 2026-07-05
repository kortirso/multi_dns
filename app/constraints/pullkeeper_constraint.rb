# frozen_string_literal: true

class PullkeeperConstraint < ApplicationConstraint
  DOMAIN = 'pullkeeper.dev'
  LAYOUT = 'pullkeeper'

  def self.matches?(request)
    super(request, DOMAIN)
  end
end
