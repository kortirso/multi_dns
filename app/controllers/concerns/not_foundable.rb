# frozen_string_literal: true

module NotFoundable
  extend ActiveSupport::Concern

  def not_found
    render template: not_found_template, status: :not_found, formats: [:html], layout: current_site_layout
  end

  private

  def not_found_template
    [current_site, 'shared/404'].compact.join('/')
  end
end
