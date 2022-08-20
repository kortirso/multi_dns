# frozen_string_literal: true

module NotFoundable
  extend ActiveSupport::Concern

  def not_found
    render template: not_found_template, formats: [:html], layout: not_found_layout
  end

  private

  def not_found_template
    [current_site, 'shared/404'].compact.join('/')
  end

  def not_found_layout
    (current_site || 'application')
  end
end
