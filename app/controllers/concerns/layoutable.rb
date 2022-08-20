# frozen_string_literal: true

module Layoutable
  extend ActiveSupport::Concern

  included do
    layout :current_site_layout
  end

  private

  def current_site_layout
    current_site.presence || 'application'
  end
end
