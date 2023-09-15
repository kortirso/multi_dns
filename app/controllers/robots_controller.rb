# frozen_string_literal: true

class RobotsController < ApplicationController
  def index
    render(
      file: Rails.public_path.join("robots/#{[current_site, 'robots.text'].compact.join('/')}"),
      layout: false,
      formats: :text
    )
  end
end
